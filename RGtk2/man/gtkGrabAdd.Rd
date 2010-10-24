\alias{gtkGrabAdd}
\name{gtkGrabAdd}
\title{gtkGrabAdd}
\description{Makes \code{widget} the current grabbed widget. This means that interaction with
other widgets in the same application is blocked and mouse as well as
keyboard events are delivered to this widget.}
\usage{gtkGrabAdd(object)}
\arguments{\item{\verb{object}}{The widget that grabs keyboard and pointer events.}}
\details{If \code{widget} is not sensitive, it is not set as the current grabbed
widget and this function does nothing.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
