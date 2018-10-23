.SUFFIXES: .in .c.in .c

M4       = m4
M4FLAGS  =
M4SCRIPT =

# User-defined value(s) for mosml
CFLAGS  += -I/usr/local/include/mosml

# --- you shouldn't need to edit below this line ---

CFLAGS  += $(shell pkg-config --cflags libRmath) -fPIC
LDFLAGS += $(shell pkg-config --libs libRmath)

ifeq ($(OS),Windows_NT)
    DLLEXT := .dll
else
    DLLEXT := .so
endif

LIBRMATH = $(shell pkg-config --variable=libdir libRmath)/libRmath$(DLLEXT)
DLLNAME := librmath-mosml$(DLLEXT)

all: mlton polyml mosml

%.c: %.c.in
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*.c

.in:
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*

mlton: rmath-mlton

rmath-mlton: rmath-template.m4 rmath-mlton.sml
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' rmath-mlton.sml

polyml: rmath-polyml

rmath-polyml: rmath-polyml.sml
	polyc -o rmath-polyml rmath-polyml.sml

rmath-polyml.sml: rmath-template.m4 rmath-polyml.sml.in
	${M4} ${M4FLAGS} ${M4SCRIPT} -D LIBRMATH=${LIBRMATH} rmath-polyml.sml.in > rmath-polyml.sml

mosml: librmath-mosml.so

librmath-mosml.so: rmath-mosml.c rmath-mosml.sml
	${CC} ${CFLAGS} -shared -o ${DLLNAME} rmath-mosml.c ${LDFLAGS}

rmath-mosml.sml: rmath-template.m4 rmath-mosml.sml.in
	${M4} ${M4FLAGS} ${M4SCRIPT} -D DLLNAME=${DLLNAME} rmath-mosml.sml.in > rmath-mosml.sml

test:
	./rmath-polyml
	./rmath-mlton
	mosml rmath-mosml.sml

clean:
	rm -f rmath-mlton rmath-mlton.sml
	rm -f rmath-polyml rmath-polyml.sml
	rm -f rmath-mosml.c rmath-mosml.sml librmath-mosml.so
