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

