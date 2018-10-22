.SUFFIXES: .in .c.in .c

M4       = m4
M4FLAGS  =
M4SCRIPT =
CFLAGS  += -I/usr/local/include/mosml -fPIC
CFLAGS  += $(shell pkg-config --cflags libRmath)
LDFLAGS += $(shell pkg-config --libs libRmath)


%.c: %.c.in
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*.c

.in:
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*

rmath: rmath-template.m4 rmath-polyml.sml rmath-mlton.sml
	polyc -o rmath-polyml rmath-polyml.sml
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' rmath-mlton.sml

mosml: rmath-template.m4 rmath-mosml.sml rmath-mosml.c
	${CC} ${CFLAGS} -shared -o librmath-mosml.so rmath-mosml.c ${LDFLAGS}
	mosml rmath-mosml.sml

test:
	./rmath-polyml
	./rmath-mlton

clean:
	rm -f rmath-mlton rmath-mlton.sml
	rm -f rmath-polyml rmath-polyml.sml
	rm -f rmath-mosml.c rmath-mosml.sml
