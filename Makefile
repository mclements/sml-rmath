.SUFFIXES: .in .c.in .c

M4       = m4
M4FLAGS  =
M4SCRIPT =

# User-defined value(s) for mosml
CFLAGS  += -I/usr/local/include/mosml -fPIC
CFLAGS  += $(shell pkg-config --cflags libRmath)
LDFLAGS += $(shell pkg-config --libs libRmath)

# User-defined value(s) for polyml
LIBRMATH = "/usr/lib/libRmath.so"

# --- you shouldn't need to edit below this line ---

all: mlton polyml mosml

%.c: %.c.in
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*.c

.in:
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*

mlton: rmath-template.m4 rmath-mlton.sml
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' rmath-mlton.sml

polyml: rmath-template.m4 rmath-polyml.sml
	polyc -o rmath-polyml rmath-polyml.sml

mosml: rmath-template.m4 rmath-mosml.sml rmath-mosml.c
	${CC} ${CFLAGS} -shared -o librmath-mosml.so rmath-mosml.c ${LDFLAGS}

test:
	./rmath-polyml
	./rmath-mlton
	mosml rmath-mosml.sml

clean:
	rm -f rmath-mlton rmath-mlton.sml
	rm -f rmath-polyml rmath-polyml.sml
	rm -f rmath-mosml.c rmath-mosml.sml librmath-mosml.so
