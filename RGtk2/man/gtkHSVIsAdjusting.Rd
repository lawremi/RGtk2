\alias{gtkHSVIsAdjusting}
\name{gtkHSVIsAdjusting}
\title{gtkHSVIsAdjusting}
\description{An HSV color selector can be said to be adjusting if multiple rapid
changes are being made to its value, for example, when the user is 
adjusting the value with the mouse. This function queries whether 
the HSV color selector is being adjusted or not.}
\usage{gtkHSVIsAdjusting(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkHSV}}}}
\details{Since 2.14}
\value{[logical] \code{TRUE} if clients can ignore changes to the color value,
since they may be transitory, or \code{FALSE} if they should consider
the color value status to be final.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
