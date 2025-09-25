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

#rainbowbox("Learning Outcomes", [
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
])

#include "book/book notes 1.typ"

#include "lectures/lecture1.typ"

#include "lectures/lecture2.typ"

#include "lectures/lecture3.typ"

#include "lectures/lecture4.typ"

#include "lectures/lecture5.typ"

#include "lectures/lecture6.typ"


#bibliography("bib.bib", full: true)
