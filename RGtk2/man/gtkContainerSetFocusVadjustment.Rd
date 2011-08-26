\alias{gtkContainerSetFocusVadjustment}
\name{gtkContainerSetFocusVadjustment}
\title{gtkContainerSetFocusVadjustment}
\description{Hooks up an adjustment to focus handling in a container, so when a 
child of the container is focused, the adjustment is scrolled to 
show that widget. This function sets the vertical alignment. See 
\code{\link{gtkScrolledWindowGetVadjustment}} for a typical way of obtaining 
the adjustment and \code{\link{gtkContainerSetFocusHadjustment}} for setting
the horizontal adjustment.}
\usage{gtkContainerSetFocusVadjustment(object, adjustment)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{adjustment}}{an adjustment which should be adjusted when the focus
is moved among the descendents of \code{container}}
}
\details{The adjustments have to be in pixel units and in the same coordinate 
system as the allocation for immediate children of the container.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
