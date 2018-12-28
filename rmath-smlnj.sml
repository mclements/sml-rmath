structure Rmath = struct
datatype test_alternative = TwoSided | Less | Greater
val M_E = 2.718281828459045235360287471353
val M_LOG2E = 1.442695040888963407359924681002
val M_LOG10E = 0.434294481903251827651128918917
val M_LN2 = 0.693147180559945309417232121458
val M_LN10 = 2.302585092994045684017991454684
val M_PI = 3.141592653589793238462643383280
val M_2PI = 6.283185307179586476925286766559
val M_PI_2 = 1.570796326794896619231321691640
val M_PI_4 = 0.785398163397448309615660845820
val M_1_PI = 0.318309886183790671537767526745
val M_2_PI = 0.636619772367581343075535053490
val M_2_SQRTPI = 1.128379167095512573896158903122
val M_SQRT2 = 1.414213562373095048801688724210
val M_SQRT1_2 = 0.707106781186547524400844362105
val M_SQRT_3 = 1.732050807568877293527446341506
val M_SQRT_32 = 5.656854249492380195206754896838
val M_LOG10_2 = 0.301029995663981195213738894724
val M_SQRT_PI = 1.772453850905516027298167483341
val M_1_SQRT_2PI = 0.398942280401432677939946059934
val M_SQRT_2dPI = 0.797884560802865355879892119869
val M_LN_2PI = 1.837877066409345483560659472811
val M_LN_SQRT_PI = 0.572364942924700087071713675677
val M_LN_SQRT_2PI = 0.918938533204672741780329736406
val M_LN_SQRT_PId2 = 0.225791352644727432363097614947
val R_pow = F_R_pow.f
val R_pow_di = F_R_pow_di.f
val norm_rand = F_norm_rand.f
val unif_rand = F_unif_rand.f
val exp_rand = F_exp_rand.f
val pnorm5 = F_pnorm5.f
val qnorm5 = F_qnorm5.f
val dnorm4 = F_dnorm4.f
val rnorm = F_rnorm.f
val punif = F_punif.f
val qunif = F_qunif.f
val dunif = F_dunif.f
val runif = F_runif.f
val pgamma = F_pgamma.f
val qgamma = F_qgamma.f
val dgamma = F_dgamma.f
val rgamma = F_rgamma.f
val log1pmx = F_log1pmx.f
val log1pexp = fn x => Math.ln(1.0+Math.exp(x)) (* TODO: this is NOT as per Rmath *)
val lgamma1p = F_lgamma1p.f
val logspace_add = F_logspace_add.f
val logspace_sub = F_logspace_sub.f
val pbeta = F_pbeta.f
val qbeta = F_qbeta.f
val dbeta = F_dbeta.f
val rbeta = F_rbeta.f
val plnorm = F_plnorm.f
val qlnorm = F_qlnorm.f
val dlnorm = F_dlnorm.f
val rlnorm = F_rlnorm.f
val pchisq = F_pchisq.f
val qchisq = F_qchisq.f
val dchisq = F_dchisq.f
val rchisq = F_rchisq.f
val pnchisq = F_pnchisq.f
val qnchisq = F_qnchisq.f
val dnchisq = F_dnchisq.f
val rnchisq = F_rnchisq.f
val pf = F_pf.f
val qf = F_qf.f
val df = F_df.f
val rf = F_rf.f
val pt = F_pt.f
val qt = F_qt.f
val dt = F_dt.f
val rt = F_rt.f
val pbinom = F_pbinom.f
val qbinom = F_qbinom.f
val dbinom = F_dbinom.f
val rbinom = F_rbinom.f
val pcauchy = F_pcauchy.f
val qcauchy = F_qcauchy.f
val dcauchy = F_dcauchy.f
val rcauchy = F_rcauchy.f
val pexp = F_pexp.f
val qexp = F_qexp.f
val dexp = F_dexp.f
val rexp = F_rexp.f
val pgeom = F_pgeom.f
val qgeom = F_qgeom.f
val dgeom = F_dgeom.f
val rgeom = F_rgeom.f
val phyper = F_phyper.f
val qhyper = F_qhyper.f
val dhyper = F_dhyper.f
val rhyper = F_rhyper.f
val pnbinom = F_pnbinom.f
val qnbinom = F_qnbinom.f
val dnbinom = F_dnbinom.f
val rnbinom = F_rnbinom.f
val ppois = F_ppois.f
val qpois = F_qpois.f
val dpois = F_dpois.f
val rpois = F_rpois.f
val pweibull = F_pweibull.f
val qweibull = F_qweibull.f
val dweibull = F_dweibull.f
val rweibull = F_rweibull.f
val plogis = F_plogis.f
val qlogis = F_qlogis.f
val dlogis = F_dlogis.f
val rlogis = F_rlogis.f
val pnbeta = F_pnbeta.f
val qnbeta = F_qnbeta.f
val dnbeta = F_dnbeta.f
val pnf = F_pnf.f
val qnf = F_qnf.f
val dnf = F_dnf.f
val pnt = F_pnt.f
val qnt = F_qnt.f
val dnt = F_dnt.f
val ptukey = F_ptukey.f
val qtukey = F_qtukey.f
val pwilcox = F_pwilcox.f
val qwilcox = F_qwilcox.f
val dwilcox = F_dwilcox.f
val rwilcox = F_rwilcox.f
val psignrank = F_psignrank.f
val qsignrank = F_qsignrank.f
val dsignrank = F_dsignrank.f
val rsignrank = F_rsignrank.f
val gammafn = F_gammafn.f
val lgammafn = F_lgammafn.f
val psigamma = F_psigamma.f
val digamma = F_digamma.f
val trigamma = F_trigamma.f
val tetragamma = F_tetragamma.f
val pentagamma = F_pentagamma.f
val beta = F_beta.f
val lbeta = F_lbeta.f
val choose = F_choose.f
val lchoose = F_lchoose.f
val bessel_i = F_bessel_i.f
val bessel_j = F_bessel_j.f
val bessel_k = F_bessel_k.f
val bessel_y = F_bessel_y.f
val fmax2 = F_fmax2.f
val fmin2 = F_fmin2.f
val sign = F_sign.f
val fprec = F_fprec.f
val fround = F_fround.f
val fsign = F_fsign.f
val ftrunc = F_ftrunc.f
val cospi = F_cospi.f
val sinpi = F_sinpi.f
val tanpi = F_tanpi.f
val imax2 = F_imax2.f
val imin2 = F_imin2.f
fun for_below f below =
    let
	fun loop i = if i=below then () else (f(i); loop(i+1))
    in
	loop 0
    end
fun rmultinom(n : int, prob : real Array.array) =
    let
	val k = Array.length prob
	val probptr = C.alloc C.T.double (Word.fromInt k)
	val _ = for_below (fn i => C.Set.double(C.Ptr.sub(probptr,i), Array.sub(prob,i))) k
	val outptr = C.alloc C.T.sint (Word.fromInt k)
	val _ = F_rmultinom.f(Int32.fromInt n, probptr, Int32.fromInt k, outptr)
	val out = Array.array(k,0)
	val _ = for_below (fn i => Array.update(out,i,C.Get.sint(C.Ptr.sub(outptr,i)))) k
	val _ = C.free outptr
	val _ = C.free probptr
    in
	out
    end
fun lgammafn_sign x =
    let
	val ptr : C.rw C.sint_obj C.ptr = C.alloc C.T.sint (Word.fromInt 1)
	val y = F_lgammafn_sign.f(x,ptr)
	val sign = C.Ptr.|*| ptr
	val _ = C.free ptr
    in
	(y,sign)
    end
fun printLn x = print(x ^ "\n")
fun stop _ = OS.Process.exit(OS.Process.success)
val qnorm = qnorm5
val pnorm = pnorm5
val dnorm = dnorm4
(* additional functions *)
fun poisson_ci(x, conflevel, alternative) =
    let
	val alpha = (1.0-conflevel)/2.0
	fun pL(x,alpha) = if Real.==(x,0.0) then 0.0 else qgamma(alpha,x, 1.0, 1, 0)
	fun pU(x,alpha) = qgamma(1.0-alpha, x+1.0, 1.0, 1, 0)
    in
	case alternative of
	    Less => (0.0, pU(x, 1.0-conflevel))
	  | Greater => (pL(x, 1.0-conflevel), Real.posInf)
	  | TwoSided => (pL(x,alpha), pU(x,alpha))
    end
fun id x = x
(* operations on ranges from..to *)
fun seq_list(from,to) =
    let
	fun loop(i,y) = if i>to then y else loop(i+1,i :: y)
    in
	List.rev(loop(from,[]))
    end
(* infix -- *)
(* fun a -- b = seq_list(a,b) *)
fun tabulate f (from,to) = List.tabulate(to-from+1,fn i => f(i+from))
fun for f init (from, to) =
    let
	fun loop(i,y) = if i>to then y else loop(i+1,f(i,y))
    in
	loop(from,init)
    end
fun sum f = for (fn (i, y) => Real.+(f(real(i)),y)) 0.0
fun sum f = for (fn (i, y) => f(i)+y) 0
fun count predicate = for (fn (i, y) => if predicate(i) then y+1 else y) 0
fun poisson_test(x, t, r, alternative) =
    let
	val m = r*t
    in
	case alternative of
	    Less => ppois(x,m,1,0)
	  | Greater => ppois(x-1.0,m,0,0)
	  | TwoSided =>
	    if Real.==(m,0.0) then (if Real.==(x,0.0) then 1.0 else 0.0)
	    else
		let
		    val relErr = 1.0 + 1.0e~7
		    val d = dpois(x,m,0)
		    val dstar = d * relErr
		    fun pred i = dpois(real(i),m,0)<=dstar
		in
		    if Real.==(x,m) then 1.0
		    else if x<m then
			let
			    fun loop n = if dpois(real(n),m,0)>d then loop(n*2) else n
			    val n = loop(Real.ceil(2.0*m-x))
			    val y = count pred (Real.ceil(m), n)
			in
			    ppois(x,m,1,0) + ppois(real(n-y),m,0,0)
			end
		    else (* x>m *)
			let
			    val y = count pred (0,Real.floor(m))
			in
			    ppois(real(y-1),m,1,0) + ppois(x-1.0, m,0,0)
			end
		end
    end
end

