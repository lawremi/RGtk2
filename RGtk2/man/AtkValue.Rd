\alias{AtkValue}
\name{AtkValue}
\title{AtkValue}
\description{The ATK interface implemented by valuators and components which display or
select a value from a bounded range of values.}
\usage{
\link{atkValueGetCurrentValue}(object)
\link{atkValueGetMaximumValue}(object)
\link{atkValueGetMinimumValue}(object)
\link{atkValueSetCurrentValue}(object, value)
}
\details{\code{\link{AtkValue}} should be implemented for components which either display a
value from a bounded range, or which allow the user to specify a value
from a bounded range, or both.  For instance, most sliders and range
controls, as well as dials, should have \code{\link{AtkObject}} representations which
implement \code{\link{AtkValue}} on the component's behalf.  \code{AtKValues} may be
read-only, in which case attempts to alter the value return FALSE to
indicate failure.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkValue}}
\section{Structures}{\describe{\item{\code{AtkValue}}{
The AtkValue structure does not contain any fields.

}}}
\section{Implementations}{AtkValue is implemented by
 \code{\link{AtkNoOpObject}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkValue.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
