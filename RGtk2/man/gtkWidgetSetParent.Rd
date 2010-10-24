\alias{gtkWidgetSetParent}
\name{gtkWidgetSetParent}
\title{gtkWidgetSetParent}
\description{This function is useful only when implementing subclasses of 
\code{\link{GtkContainer}}.
Sets the container as the parent of \code{widget}, and takes care of
some details such as updating the state and style of the child
to reflect its new location. The opposite function is
\code{\link{gtkWidgetUnparent}}.}
\usage{gtkWidgetSetParent(object, parent)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{parent}}{parent container}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
