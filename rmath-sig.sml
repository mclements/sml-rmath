(* This Source Code Form is subject to the terms of the Mozilla Public *)
(* License, v. 2.0.  If a copy of the MPL was not distributed with this *)
(* file, You can obtain one at http://mozilla.org/MPL/2.0/. *)
											      
(* Copyright 2018 Mark Clements *)

signature RMATH =
sig
datatype test_alternative = TwoSided | Less | Greater
(* e *)
       val M_E : real
(* log2(e) *)
       val M_LOG2E : real
(* log10(e) *)
       val M_LOG10E : real
(* ln(2) *)
       val M_LN2 : real
(* ln(10) *)
       val M_LN10 : real
(* pi *)
       val M_PI : real
(* 2*pi *)
       val M_2PI : real
(* pi/2 *)
       val M_PI_2 : real
(* pi/4 *)
       val M_PI_4 : real
(* 1/pi *)
       val M_1_PI : real
(* 2/pi *)
       val M_2_PI : real
(* 2/sqrt(pi) *)
       val M_2_SQRTPI : real
(* sqrt(2) *)
       val M_SQRT2 : real
(* 1/sqrt(2) *)
       val M_SQRT1_2 : real
(* sqrt(3) *)
       val M_SQRT_3 : real
(* sqrt(32) *)
       val M_SQRT_32 : real
(* log10(2) *)
       val M_LOG10_2 : real
(* sqrt(pi) *)
       val M_SQRT_PI : real
(* 1/sqrt(2pi) *)
       val M_1_SQRT_2PI : real
(* sqrt(2/pi) *)
       val M_SQRT_2dPI : real
(* log(2*pi) *)
       val M_LN_2PI : real
(* log(pi)/2 *)
       val M_LN_SQRT_PI : real
(* log(2*pi)/2 *)
       val M_LN_SQRT_2PI : real
(* log(pi/2)/2 *)
       val M_LN_SQRT_PId2 : real
(* R_pow function. R_pow(x,y): real * real -> real *)
       val R_pow : real * real -> real
(* R_pow_di function. R_pow_di(x,y): real * int -> real *)
       val R_pow_di : real * int -> real
(* Normal random numbers. norm_rand() *)
       val norm_rand : unit -> real
(* Uniform random numbers. unif_rand() *)
       val unif_rand : unit -> real
(* Exponential random numbers. exp_rand() *)
       val exp_rand : unit -> real
(* Normal cumulative density function. pnorm5(q,mean,sd,lower,log) *)
       val pnorm5 : real * real * real * int * int -> real
(* Normal quantile function. qnorm5(p,mean,sd,lower,log) *)
       val qnorm5 : real * real * real * int * int -> real
(* Normal probability density function. dnorm4(p,mean,sd,log) *)
       val dnorm4 : real * real * real * int -> real
(* Normal random numbers. rnorm(mean,sd): real * real -> real *)
       val rnorm : real * real -> real
(* Uniform cumulative density function. punif(q,min,max,lower,log) *)
       val punif : real * real * real * int * int -> real
(* Uniform quantile function. qunif(p,min,max,lower,log) *)
       val qunif : real * real * real * int * int -> real
(* Uniform probability density function. dunif(p,min,max,log) *)
       val dunif : real * real * real * int -> real
(* Uniform random numbers. runif(min,max): real * real -> real *)
       val runif : real * real -> real
(* Gamma cumulative density function. pgamma(q,shape,scale,lower,log) *)
       val pgamma : real * real * real * int * int -> real
(* Gamma quantile function. qgamma(p,shape,scale,lower,log) *)
       val qgamma : real * real * real * int * int -> real
(* Gamma probability density function. dgamma(p,shape,scale,log) *)
       val dgamma : real * real * real * int -> real
(* Gamma random numbers. rgamma(shape,scale): real * real -> real *)
       val rgamma : real * real -> real
(* Accurate log(1+x) - x (care for small x). log1pmx(x) *)
       val log1pmx : real -> real
(* log(1 + exp(x)). Rf_log1pexp(x) *)
       val Rf_log1pexp : real -> real
(* Accurate log(gamma(x+1)) for small x (0 < x < 0.5). lgamma1p(x) *)
       val lgamma1p : real -> real
(* log (exp (logx) + exp (logy)). logspace_add(logx,logy): real * real -> real *)
       val logspace_add : real * real -> real
(* log (exp (logx) - exp (logy)). logspace_sub(logx,logy): real * real -> real *)
       val logspace_sub : real * real -> real
(* Beta cumulative density function. pbeta(q,shape1,shape2,lower,log) *)
       val pbeta : real * real * real * int * int -> real
(* Beta quantile function. qbeta(p,shape1,shape2,lower,log) *)
       val qbeta : real * real * real * int * int -> real
(* Beta probability density function. dbeta(p,shape1,shape2,log) *)
       val dbeta : real * real * real * int -> real
(* Beta random numbers. rbeta(shape1,shape2): real * real -> real *)
       val rbeta : real * real -> real
(* Log-normal cumulative density function. plnorm(q,meanlog,sdlog,lower,log) *)
       val plnorm : real * real * real * int * int -> real
(* Log-normal quantile function. qlnorm(p,meanlog,sdlog,lower,log) *)
       val qlnorm : real * real * real * int * int -> real
(* Log-normal probability density function. dlnorm(p,meanlog,sdlog,log) *)
       val dlnorm : real * real * real * int -> real
(* Log-normal random numbers. rlnorm(meanlog,sdlog): real * real -> real *)
       val rlnorm : real * real -> real
(* Chi-squared cumulative density function. pchisq(q,df,lower,log) *)
       val pchisq : real * real * int * int -> real
(* Chi-squared quantile function. qchisq(p,df,lower,log) *)
       val qchisq : real * real * int * int -> real
(* Chi-squared probability density function. dchisq(p,df,log) *)
       val dchisq : real * real * int -> real
(* Chi-squared random numbers. rchisq(df) *)
       val rchisq : real -> real
(* Non-central chi-squared cumulative density function. pnchisq(q,df,ncp,lower,log) *)
       val pnchisq : real * real * real * int * int -> real
(* Non-central chi-squared quantile function. qnchisq(p,df,ncp,lower,log) *)
       val qnchisq : real * real * real * int * int -> real
(* Non-central chi-squared probability density function. dnchisq(p,df,ncp,log) *)
       val dnchisq : real * real * real * int -> real
(* Non-central chi-squared random numbers. rnchisq(df,ncp): real * real -> real *)
       val rnchisq : real * real -> real
(* F cumulative density function. pf(q,df1,df2,lower,log) *)
       val pf : real * real * real * int * int -> real
(* F quantile function. qf(p,df1,df2,lower,log) *)
       val qf : real * real * real * int * int -> real
(* F probability density function. df(p,df1,df2,log) *)
       val df : real * real * real * int -> real
(* F random numbers. rf(df1,df2): real * real -> real *)
       val rf : real * real -> real
(* T cumulative density function. pt(q,df,lower,log) *)
       val pt : real * real * int * int -> real
(* T quantile function. qt(p,df,lower,log) *)
       val qt : real * real * int * int -> real
(* T probability density function. dt(p,df,log) *)
       val dt : real * real * int -> real
(* T random numbers. rt(df) *)
       val rt : real -> real
(* Binomial cumulative density function. pbinom(q,size,prob,lower,log) *)
       val pbinom : real * real * real * int * int -> real
(* Binomial quantile function. qbinom(p,size,prob,lower,log) *)
       val qbinom : real * real * real * int * int -> real
(* Binomial probability density function. dbinom(p,size,prob,log) *)
       val dbinom : real * real * real * int -> real
(* Binomial random numbers. rbinom(size,prob): real * real -> real *)
       val rbinom : real * real -> real
(* Cauchy cumulative density function. pcauchy(q,location,scale,lower,log) *)
       val pcauchy : real * real * real * int * int -> real
(* Cauchy quantile function. qcauchy(p,location,scale,lower,log) *)
       val qcauchy : real * real * real * int * int -> real
(* Cauchy probability density function. dcauchy(p,location,scale,log) *)
       val dcauchy : real * real * real * int -> real
(* Cauchy random numbers. rcauchy(location,scale): real * real -> real *)
       val rcauchy : real * real -> real
(* Exponential cumulative density function. pexp(q,rate,lower,log) *)
       val pexp : real * real * int * int -> real
(* Exponential quantile function. qexp(p,rate,lower,log) *)
       val qexp : real * real * int * int -> real
(* Exponential probability density function. dexp(p,rate,log) *)
       val dexp : real * real * int -> real
(* Exponential random numbers. rexp(rate) *)
       val rexp : real -> real
(* Geometric cumulative density function. pgeom(q,prob,lower,log) *)
       val pgeom : real * real * int * int -> real
(* Geometric quantile function. qgeom(p,prob,lower,log) *)
       val qgeom : real * real * int * int -> real
(* Geometric probability density function. dgeom(p,prob,log) *)
       val dgeom : real * real * int -> real
(* Geometric random numbers. rgeom(prob) *)
       val rgeom : real -> real
(* Hypergeometric cumulative density function. phyper(q,m,n,k,lower,log) *)
       val phyper : real * real * real * real * int * int -> real
(* Hypergeometric quantile function. qhyper(p,m,n,k,lower,log) *)
       val qhyper : real * real * real * real * int * int -> real
(* Hypergeometric probability density function. dhyper(p,m,n,k,log) *)
       val dhyper : real * real * real * real * int -> real
(* Hypergeometric random numbers. rhyper(m,n,k) *)
       val rhyper : real * real * real -> real
(* Negative Binomial cumulative density function. pnbinom(q,size,prob,lower,log) *)
       val pnbinom : real * real * real * int * int -> real
(* Negative Binomial quantile function. qnbinom(p,size,prob,lower,log) *)
       val qnbinom : real * real * real * int * int -> real
(* Negative Binomial probability density function. dnbinom(p,size,prob,log) *)
       val dnbinom : real * real * real * int -> real
(* Negative Binomial random numbers. rnbinom(size,prob): real * real -> real *)
       val rnbinom : real * real -> real
(* Poisson cumulative density function. ppois(q,lambda,lower,log) *)
       val ppois : real * real * int * int -> real
(* Poisson quantile function. qpois(p,lambda,lower,log) *)
       val qpois : real * real * int * int -> real
(* Poisson probability density function. dpois(p,lambda,log) *)
       val dpois : real * real * int -> real
(* Poisson random numbers. rpois(lambda) *)
       val rpois : real -> real
(* Weibull cumulative density function. pweibull(q,shape,scale,lower,log) *)
       val pweibull : real * real * real * int * int -> real
(* Weibull quantile function. qweibull(p,shape,scale,lower,log) *)
       val qweibull : real * real * real * int * int -> real
(* Weibull probability density function. dweibull(p,shape,scale,log) *)
       val dweibull : real * real * real * int -> real
(* Weibull random numbers. rweibull(shape,scale): real * real -> real *)
       val rweibull : real * real -> real
(* Logistic cumulative density function. plogis(q,location,scale,lower,log) *)
       val plogis : real * real * real * int * int -> real
(* Logistic quantile function. qlogis(p,location,scale,lower,log) *)
       val qlogis : real * real * real * int * int -> real
(* Logistic probability density function. dlogis(p,location,scale,log) *)
       val dlogis : real * real * real * int -> real
(* Logistic random numbers. rlogis(location,scale): real * real -> real *)
       val rlogis : real * real -> real
(* Non-central beta cumulative distribution function. pnbeta(q,shape1,shape2,ncp,lower,log) *)
       val pnbeta : real * real * real * real * int * int -> real
(* Non-central beta quantile function. qnbeta(p,shape1,shape2,ncp,lower,log) *)
       val qnbeta : real * real * real * real * int * int -> real
(* Non-central beta probability density function. dnbeta(x,shape1,shape2,ncp,log) *)
       val dnbeta : real * real * real * real * int -> real
(* Non-central F cumulative distribution function. pnf(q,df1,df2,ncp,lower,log) *)
       val pnf : real * real * real * real * int * int -> real
(* Non-central F quantile function. qnf(p,df1,df2,ncp,lower,log) *)
       val qnf : real * real * real * real * int * int -> real
(* Non-central F probability density function. dnf(x,df1,df2,ncp,log) *)
       val dnf : real * real * real * real * int -> real
(* Non-central Student t cumulative distribution function. pnt(q,df,ncp,lower,log) *)
       val pnt : real * real * real * int * int -> real
(* Non-central Student t quantile function. qnt(p,df,ncp,lower,log) *)
       val qnt : real * real * real * int * int -> real
(* Non-central Student t probability density function. dnt(x,df,ncp,log) *)
       val dnt : real * real * real * int -> real
(* Studentised rangecumulative distribution function. ptukey(q,nmeans,df,nranges,lower,log) *)
       val ptukey : real * real * real * real * int * int -> real
(* Studentised range quantile function. qtukey(p,nmeans,df,nranges,lower,log) *)
       val qtukey : real * real * real * real * int * int -> real
(* Wilcoxon rank sum cumulative density function. pwilcox(q,m,n,lower,log) *)
       val pwilcox : real * real * real * int * int -> real
(* Wilcoxon rank sum quantile function. qwilcox(p,m,n,lower,log) *)
       val qwilcox : real * real * real * int * int -> real
(* Wilcoxon rank sum probability density function. dwilcox(p,m,n,log) *)
       val dwilcox : real * real * real * int -> real
(* Wilcoxon rank sum random numbers. rwilcox(m,n): real * real -> real *)
       val rwilcox : real * real -> real
(* Wilcoxon signed rank cumulative density function. psignrank(q,n,lower,log) *)
       val psignrank : real * real * int * int -> real
(* Wilcoxon signed rank quantile function. qsignrank(p,n,lower,log) *)
       val qsignrank : real * real * int * int -> real
(* Wilcoxon signed rank probability density function. dsignrank(p,n,log) *)
       val dsignrank : real * real * int -> real
(* Wilcoxon signed rank random numbers. rsignrank(n) *)
       val rsignrank : real -> real
(* gammafn. gammafn(x) *)
       val gammafn : real -> real
(* lgammafn. lgammafn(x) *)
       val lgammafn : real -> real
(* psigamma. psigamma(x,y): real * real -> real *)
       val psigamma : real * real -> real
(* digamma. digamma(x) *)
       val digamma : real -> real
(* trigamma. trigamma(x) *)
       val trigamma : real -> real
(* tetragamma. tetragamma(x) *)
       val tetragamma : real -> real
(* pentagamma. pentagamma(x) *)
       val pentagamma : real -> real
(* beta. beta(x,y): real * real -> real *)
       val beta : real * real -> real
(* lbeta. lbeta(x,y): real * real -> real *)
       val lbeta : real * real -> real
(* choose. choose(n,k): real * real -> real *)
       val choose : real * real -> real
(* lchoose. lchoose(n,k): real * real -> real *)
       val lchoose : real * real -> real
(* bessel_i. bessel_i(x,nu,scaled) *)
       val bessel_i : real * real * real -> real
(* bessel_j. bessel_j(x,nu): real * real -> real *)
       val bessel_j : real * real -> real
(* bessel_k. bessel_k(x,nu,scaled) *)
       val bessel_k : real * real * real -> real
(* bessel_y. bessel_y(x,nu): real * real -> real *)
       val bessel_y : real * real -> real
(* fmax2. fmax2(x,y): real * real -> real *)
       val fmax2 : real * real -> real
(* fmin2. fmin2(x,y): real * real -> real *)
       val fmin2 : real * real -> real
(* sign. sign(x) *)
       val sign : real -> real
(* fprec. fprec(x,y): real * real -> real *)
       val fprec : real * real -> real
(* fround. fround(x,y): real * real -> real *)
       val fround : real * real -> real
(* fsign. fsign(x,y): real * real -> real *)
       val fsign : real * real -> real
(* ftrunc. ftrunc(x) *)
       val ftrunc : real -> real
(* cospi. cospi(x) *)
       val cospi : real -> real
(* sinpi. sinpi(x) *)
       val sinpi : real -> real
(* tanpi. tanpi(x) *)
       val tanpi : real -> real
(* imax2. imax2(a,b) *)
val imax2 : int * int -> int
(* imin2. imin2(a,b) *)
val imin2 : int * int -> int
(* log(1 + exp(x)). log1pexp(x) *)
val log1pexp : real -> real
(* Normal cumulative density function. pnorm5(q,mean,sd,lower,log) *)
val pnorm : real * real * real * int * int -> real
(* Normal quantile function. qnorm(p,mean,sd,lower,log) *)
val qnorm : real * real * real * int * int -> real
(* Normal probability density function. dnorm(p,mean,sd,log) *)
val dnorm : real * real * real * int -> real
(* Get random seed. get_seed(a,b) *)
val get_seed : unit -> int * int
(* Set random seed. set_seed(a,b) *)
val set_seed : int * int -> unit
(* Sample from a multinomial distribution. rmultinom(n,prob) *)
val rmultinom : int * real Array.array -> int Array.array
(* log(gamma) with sign. lgammafn_sign(x) *)
val lgammafn_sign : real -> real * int
(* some additional functions *)
(* Poisson confidence interval. poisson_ci(x, t, alternative, confLevel) *)
val poisson_ci : real * real * test_alternative -> real * real
(* Poisson test. poisson_test(x, t, r, alternative) *)
val poisson_test : real * real * real * test_alternative -> real
end
