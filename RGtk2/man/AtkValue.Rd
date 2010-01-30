\alias{AtkValue}
\name{AtkValue}
\title{AtkValue}
\description{The ATK interface implemented by valuators and components which display or
select a value from a bounded range of values.}
\section{Methods and Functions}{
\code{\link{atkValueGetCurrentValue}(object)}\cr
\code{\link{atkValueGetMaximumValue}(object)}\cr
\code{\link{atkValueGetMinimumValue}(object)}\cr
\code{\link{atkValueSetCurrentValue}(object, value)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkValue}}
\section{Implementations}{AtkValue is implemented by
 \verb{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\verb{\link{AtkValue}} should be implemented for components which either display a
value from a bounded range, or which allow the user to specify a value
from a bounded range, or both.  For instance, most sliders and range
controls, as well as dials, should have \verb{\link{AtkObject}} representations which
implement \verb{\link{AtkValue}} on the component's behalf.  \verb{AtKValues} may be
read-only, in which case attempts to alter the value return FALSE to
indicate failure.}
\section{Structures}{\describe{\item{\verb{AtkValue}}{
The AtkValue structure does not contain any fields.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkValue.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
