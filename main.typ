#import "lib.typ": *
#let title = [Calculus 2]
#set page(
   paper: "a4",
   header: align(left, title),
   numbering: "1",
)

#align(center, text(17pt)[
   *#title*

   Matteo Bongiovanni\
])


= Calculus 2

== Learning Outcomes
+ represent a given periodic function using its Fourier series by finding the Fourier coefficients
+ accurately depict and compute the dot product and the cross product of vectors, and understand what a vector field is
+ formulate the definition of continuity for vector valued and multivariable functions, and check continuity for such functions
+ develop a firm understanding of differentiability for vector valued and multivariable functions including partial and directional derivatives
+ compute partial and directional derivatives from the definition, linear approximations, determine the tangent plane of the graph of a multivariable function, and apply the chain rule
+ determine extrema of multivariable functions, including constrained extrema using the method of Lagrange multipliers, and, for functions of two variables, classify critical points using the Hessian
+ understand change of coordinates Cartesian, polar, spherical and cylindrical coordinates
+ compute the lengths of parametric curves, reparametrize curves by arclength and compute the scalar curvature of a curve
+ apply the implicit function theorem and the integral theorems of Green, Stokes, and Gauss
+ compute double and triple integrals representing surface and volumes of shapes, respectively

#bluebox("Functions", [
   - *Piecewise functions*: defined differently for different areas of the domain:
   $ f = cases(1 quad x divides 2, 0 quad x divides.not 2) $
   - *Even and Odd Functions*: if a function $f$ satisfies $forall x in D f(-x) = f(x)$, then
      $f$ is called an _even_ function. If $f$ satisfies $f(-x) = - f(x)$, then it is called an
      _odd_ function.
   $ (-x)^2 = x^2 \ (-x)^3 = - x^3 $
   - *Increasing and Decreasing Functions*: A function $f$ is called _increasing_ on an interval $I$
      if $f(x_1) < f(x_2)$ whenever $x_1 < x_2 in I$. It is called _decreasing_ on $I$ if 
      $f(x_1) > f(x_2)$ whenever $x_1 < x_2 in I$
])

== Limits
#let limxa = $display(lim_(x -> a))$
- *One sided Limits* 
$
   H(t) = cases(0 quad "if" t < 0, 1 quad "if" t >= 0) \
   lim_(t -> 0^-) H(t) = 0 \
   lim_(t -> 0^+) H(t) = 1 \
$

#Definitionbox("Left-Hand Limit", [
   $ lim_(x -> a^-) f(x) = L $
   $ forall epsilon > 0, exists delta > 0: (a - delta < x < a) => |f(x) - L| < epsilon $
])

#TheoremBox("", [
   $ limxa f(x) = L <==> lim_(x -> a^+) f(x) = L =  lim_(x -> a^-) f(x) $
])

- *Limit laws*:

let $c$ be a constant and $exists limxa f(x)$ and 
$exists limxa g(x)$

$
   limxa [ f(x) + g(x) ] &= limxa f(x) + limxa g(x) \
   limxa [ f(x) - g(x) ] &= limxa f(x) - limxa g(x) \
   limxa [ c f(x) ] &= c limxa f(x) \
   limxa [ f(x) times g(x) ] &= limxa f(x) times limxa g(x) \
   limxa f(x) / g(x) &= frac(limxa f(x) , limxa g(x)) quad
   "if"limxa g(x) != 0 
$

- *Direct Substitution Property*: If $f$ is a polynomial or a rational function
   and $a$ is in the domain of $f$
$
   limxa f(x) = f(a)
$

- If $f(x) = g(x)$ when $x != a$, then $limxa f(x) = limxa g(x)$,
   if they exist

#TheoremBox("", [
   If $f(x) <= g(x)$ when $x$ is near $a$ (except possibly at $a$) 
   and the limits of $f$ and $g$ both exist as $x$ approaches $a$, then
   $ limxa f(x) <= limxa g(x) $
])

#TheoremBox("The Squeeze Theorem", [
   If $f(x) <= g(x) <= h(x)$ when $x$ is near $a$ and 
   $ limxa f(x) = limxa h(x) = L $
   then 
   $ limxa g(x) = L $
])

#Definitionbox("Infinite Limit", [
   Let $f$ be a function defined on some open interval that contains 
   the number $a$, except possibly at $a$ itself, then:
   $ limxa f(x) = infinity $
   means that for every positive number $M$ there is a positive number $delta$ such that

   if $0 < |x - a| < delta$ then $f(x) > M$

   #line(length: 100%)

   $ limxa f(x) = -infinity $
   means that for every positive number $N$ there is a positive number $delta$ such that

   if $0 < |x - a| < delta$ then $f(x) < N$

])

#Definitionbox("Continuity of a function", [
   - A function is _continuous at a number_ $a$ if $display(limxa) f(x) = f(a)$

   - If $f$ is defined near $a$ but not at $a$, $f$ is _discontiuous at_ $a$

   - continuous from the right: $display(lim_(x -> a^+))f(x) = f(a)$

   - continuous from the left: $display(lim_(x -> a^-))f(x) = f(a)$

   - $f$ is _continuous on an interval_ if it is continuous at every number in the interval
])

#TheoremBox("", [
   *Properties of Continuous Functions*:
   
   If $f$ and $g$ are continuous at $a$ and $c$ is a constant, then the following are also
   continuous at $a$:

   #columns(3)[
      $ f + g\ f - g $
      #colbreak()
      $ c f\ f g\ $
      #colbreak()
      $ f / g ("if" g(a) != 0) $
   ]
])

#TheoremBox("", [
   - Any polynomial is continuous everywhere ($RR = (- infinity, infinity)$)
   - The Following types of functions are continuous at every number of their domains:
      #columns(2)[
         - rational 
         - polynomial
         - root
         - trig
         #colbreak()
         - inverse trig
         - exponential
         - log
      ]
])

#TheoremBox("",[
   $ limxa f(g(x)) = f(limxa g(x)) $
   if $f$ is continuous at $b$
])

#TheoremBox("", [
   If $g$ id continuous at $a$ and $f$ is continuous at $g(a)$, then $f(g(x))$ is continuous at $a$
])

#TheoremBox("The Intermediate Value Theorem", [
   A function $f$, continuouson a closed interval $[a. b]$, and let $N$ be and number between
   $f(a)$ and $f(b)$ where $f(a) != f(b)$. There exists a $c$ in $(a, b)$ such that $f(c) = N$
])

// #Definitionbox("Limit at infinity", [
//    Let $f$ be a function defined on some interval $(- infinity, a)$
//
//    $ lim_(x -> - infinity) f(x) = L $
//
//    means that the values of $f(x)$ can be made arbitrarily close to L by requiring $x$ to be
//    sufficiently large negative
// ])

#Definitionbox("Horizontal asymptote", [
   The line $y = L$ is called the _horizontal asymptote_ of the curve if either
   $ lim_(x -> - infinity) f(x) = L or lim_(x -> infinity) f(x) = L $
])

#TheoremBox("", [
   - If $r > 0$ is a rational number 
   $ lim_(x -> infinity) 1/(x^r) = 0 $

   - If $r > 0$ is a rational number such that $x^r$ is defines for all $x$ 
   $ lim_(x -> - infinity) 1/(x^r) = 0 $
])

== Derivatives

#Definitionbox("Tangent Line", [
   The _tangent line_ to the curve $f(x)$ at the point $P(a, f(a))$ is the line through $P$ with
   slope:
   $ m = limxa frac(f(x) - f(a), x - a) = lim_(h -> 0) frac(f(a + h) - f(a), h) $
])

#Definitionbox("Derivative of a function", [
   The _derivative of a function_ $f$ at a number $a$ is
   $ f'(a) = lim_(h -> 0) frac(f(a + h) - f(a), h) $

   The derivative is the instantaneous rate of change of the function, at that point
])

#let dydx = $frac(d y, d x)$

#Notationbox([ $ f'(x) = y' = dydx = frac(d f, d x) = d/(d x) f(x) = D_x f(x) $ ])

#Definitionbox("", [
   A function $f$ is _differentiable_ at $a$ if $f'(x)$ exists. It is _differentiable_
   on an open interval if it is differentiable at every number in the interval
])

#TheoremBox("", [
   if $f$ is differentiable at $a$, then $f$ is continuous at $a$.

   #line(length: 100%)

   Examples of continuous non-differentiable functions include:
   - $|x|$
   - vertical tangent lines: $limxa |f'(x)| = infinity$
])

=== Differentiation Rules:

// #pinkbox("Constant Functions", [
//    $ (c)' = 0 $
// ])

#pinkbox("Power Functions", [
   $ (x^n)' = n x^(n - 1) $
])

#Definitionbox($e$, [
   $
      lim_(h -> 0) (e^h - 1) / h = 1 \
      e = lim_(x -> 0) (1 + x)^(1/x) \ 
      = lim_(n -> infinity) lr((1 + 1 / n), size: #150%)^n
   $
])

#pinkbox("Product Rule", [
   $ (u v)' = u' v + u v' $
])

#pinkbox("Quotient Rule", [
   $ (u / v)' = frac(v u' - u v', v^2) $
])

#pinkbox("Chain Rule", [
   $ f(g(x)) = f'(g(x)) dot g'(x) $
   #line(length: 100%)
   *The Power Rule combined with the chain rule*:
   $ lr([(g(x))^n], size: #150%)' = n lr([g(x)], size: #150%)^(n - 1) g'(x) $
])

#pinkbox("Trigonometric Functions", [
   $
      (sin x)' &= cos x \
      (cos x)' &= - sin x \
      (tan x)' &= sec^2 x \
      (csc x)' &= -csc x cot x \
      (sec x)' &= sec x tan x \
      (cot x)' &= - csc^2 x \
      (arcsin x)' &= 1/sqrt(1 - x^2) \
      (arccos x)' &= - 1/sqrt(1 - x^2) \
      (arctan x)' &= 1/(1 + x^2) \
      (csc^(-1) x)' &= - 1/(x sqrt(x^2 - 1)) \
      (sec^(-1) x)' &= 1/(x sqrt(x^2 - 1)) \
      (cot^(-1) x)' &= - 1/(1 + x^2)
   $

   #line(length: 100%)

   $
      lim_(theta -> 0) (sin theta) / theta &= 1 \
      lim_(theta -> 0) (cos theta - 1) / theta &= 0
   $
])

#pinkbox("General Exponential Functions", [
   $ (b^x)' = b^x ln b $
])

==== Implicit Differentiation

#Definitionbox("Implicitly defined functions", [
   Functions defined by a relation between x and y.

   $ x^2 + y^2 = 25 $
])

#Definitionbox("Implicit Differentiation", [
   We don't need to rearrange every equation in terms of $y$ to be able to differentiate.
   We can use _implicit differentiation_ and differentiate both sides with respect to $x$, then
   solve fot $dydx$.
   
   #Examplebox([
      $
         x^2 + y^2 &= 25 \
         d/(d x) (x^ 2 + y^2) &= d / (d x) (25) \ 
         d/(d x) (x^ 2) + d/(d x) (y^2) &= 0 \ 
         2 x + 2 y dydx = 0 \
         dydx = - x / y
      $
   ])
])

#Examplebox("Secound derivative of Implicit Funcitons", [
   $
      x^4 + y^4 &= 16 \
      4 x^3 + 4y^3 y' &= 0 \
      y' &= - x^3 / y^3 \
      y'' &= d/(d x) (- x^3 / y^3) = - frac((y^3)(3 x^2) - (x^3)(3y^2 y'), y^6) \
      &= - frac((y^3)(3 x^2) - (x^3)(3y^2 (- x^3 / y^3)), y^6) \
      &= - frac(3(x^2 y^4 + x^6), y^7) = - frac(3 x^2 (y^4 + x^4), y^7) \
      &= (3 x^2 (16))/y^7 = -48 x^2 / y^7
   $
])

#pinkbox("Derivatives of Logarithmic Functions", [
   $ 
      d/(d x) (log_b x) = 1/(x ln b) \
      d/(d x) (ln |x|) = 1/(x) \
   $
])

#redbox("Logarithmic Differentiation", [
   Calculating Derivatives can sometimes be made simpler by taking the logatithm of both sides.
   #Examplebox([
      $
         y &= frac(x^(3/4) sqrt(x^2 + 1), (3x + 2)^5) \ 
         ln y &= 3/4 ln x + 1/2 ln(x^2 + 1) - 5 (3x + 2) \
         1 / y dydx &= 3/4 dot 1/x + 1/2 dot (2x)/(x^2 + 1) - 5 dot 3/(3x + 1) \ 
         dydx &= y (3/4 dot 1/x + 1/2 dot (2x)/(x^2 + 1) - 5 dot 3/(3x + 1)) \ 
         &= frac(x^(3/4) sqrt(x^2 times 1), (3x + 2)^5) (3/(4x) + x/(x^2 + 1) - 15/(3x + 1)) \ 
      $
   ])
])

