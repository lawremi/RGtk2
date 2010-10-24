\alias{gtkEventBoxSetAboveChild}
\name{gtkEventBoxSetAboveChild}
\title{gtkEventBoxSetAboveChild}
\description{Set whether the event box window is positioned above the windows of its child,
as opposed to below it. If the window is above, all events inside the
event box will go to the event box. If the window is below, events
in windows of child widgets will first got to that widget, and then
to its parents.}
\usage{gtkEventBoxSetAboveChild(object, above.child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEventBox}}}
\item{\verb{above.child}}{\code{TRUE} if the event box window is above the windows of its child}
}
\details{The default is to keep the window below the child.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
