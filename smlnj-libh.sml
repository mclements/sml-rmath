(* libh.sml - for smlnj and ml-nlffigen *)
structure Library = struct
local
    (* CAUTION: libRmath.so should be a 32bit binary *)
    val file = "/usr/lib/libRmath.so"
    val lh  = DynLinkage.open_lib 
                  { name = file, global = true, lazy = true }
in
fun libh s =
    let
	val sh = DynLinkage.lib_symbol (lh, s)
    in
	fn () => DynLinkage.addr sh
    end
end
end
