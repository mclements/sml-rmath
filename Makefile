.SUFFIXES: .in

M4       = m4
M4FLAGS  =
M4SCRIPT =

.in:
	${M4} ${M4FLAGS} ${M4SCRIPT} $< > $*

rmath: rmath-template.m4 rmath-polyml.sml rmath-mlton.sml
	polyc -o rmath-polyml rmath-polyml.sml
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' rmath-mlton.sml

mosml: rmath-template.m4 rmath-mosml.sml
	${M4} ${M4FLAGS} ${M4SCRIPT} rmath-mosml.c.in > rmath-mosml.c

test:
	./rmath-polyml
	./rmath-mlton

clean:
	rm -f rmath-mlton rmath-mlton.sml
	rm -f rmath-polyml rmath-polyml.sml
