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
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkValue}} should be implemented for components which either display a
value from a bounded range, or which allow the user to specify a value
from a bounded range, or both.  For instance, most sliders and range
controls, as well as dials, should have \code{\link{AtkObject}} representations which
implement \code{\link{AtkValue}} on the component's behalf.  \verb{AtKValues} may be
read-only, in which case attempts to alter the value return FALSE to
indicate failure.}
\section{Structures}{\describe{\item{\verb{AtkValue}}{
The AtkValue structure does not contain any fields.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkValue.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
