.SUFFIXES: .in .c.in .c .o .sml

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

all:
	@echo Available tasks include: test-all test-mlton test-polyml test-mosml test-smlsharp 

%.c: %.c.in
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*.c

%.sml: %.sml.in
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*.sml

.in:
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*

.sml.o:
	smlsharp -c -o $@ $<

rmath-sig.sml: rmath-sig.sml.in

mlton: rmath-template.m4 rmath-sig.sml rmath-mlton.sml

polyml: rmath-sig.sml rmath-polyml.sml

# sub-task for polyml
rmath-polyml.sml: rmath-template.m4 rmath-sig.sml rmath-polyml.sml.in
	${M4} ${M4FLAGS} ${M4SCRIPT} -D LIBRMATH=${LIBRMATH} rmath-polyml.sml.in > rmath-polyml.sml

smlsharp: rmath-smlsharp.o

# sub-task for smlsharp
rmath-smlsharp.o: rmath-template.m4 rmath-smlsharp.smi rmath-smlsharp.sml rmath-smlsharp.smi

mosml: librmath-mosml.so

# sub-tasks for mosml
librmath-mosml.so: rmath-mosml.c rmath-sig.sml rmath-mosml.sml
	${CC} ${CFLAGS} -shared -o ${DLLNAME} rmath-mosml.c ${LDFLAGS}

rmath-mosml.sml: rmath-template.m4 rmath-sig.sml rmath-mosml.sml.in
	${M4} ${M4FLAGS} ${M4SCRIPT} -D DLLNAME=${DLLNAME} rmath-mosml.sml.in > rmath-mosml.sml

# testing

test-all: test-mlton test-polyml test-mosml test-smlsharp

test-mlton: mlton rmath-sig.sml rmath-mlton.sml test-main.sml test-call-main.sml test-mlton.mlb
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' test-mlton.mlb
	./test-mlton
	rm test-mlton

test-polyml: polyml rmath-sig.sml rmath-polyml.sml test-main.sml test-polyml.sml
	poly --script test-polyml.sml

test-mosml: mosml rmath-sig.sml rmath-mosml.sml test-main.sml test-mosml.sml
	mosml -quietdec test-mosml.sml

test-smlsharp: smlsharp rmath-smlsharp.smi rmath-smlsharp.sml test-main.o test-smlsharp.smi test-smlsharp.o
	smlsharp -o test-smlsharp test-smlsharp.smi ${LDFLAGS}
	./test-smlsharp
	rm test-smlsharp

# sub-tasks for test-smlsharp
test-main.o: test-main.sml test-main.smi

test-smlsharp.o: test-smlsharp.sml test-smlsharp.smi

clean:
	rm -f rmath-mlton rmath-mlton.sml
	rm -f rmath-polyml rmath-polyml.sml
	rm -f rmath-mosml.c rmath-mosml.sml librmath-mosml.so
	rm -f *.o rmath-smlsharp.sml rmath-smlsharp.smi
	rm -f a.out
	rm -f rmath-sig.sml
