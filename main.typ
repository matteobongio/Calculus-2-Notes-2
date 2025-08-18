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

