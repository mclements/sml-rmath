rmath: rmath-template.m4 rmath-polyml.sml rmath-mlton.sml
	polyc -o rmath-polyml rmath-polyml.sml
	# ./rmath-polyml
	mlton -default-ann 'allowFFI true' -link-opt '-lRmath' rmath-mlton.sml
	# ./rmath-mlton
