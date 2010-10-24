\alias{gtkWidgetReparent}
\name{gtkWidgetReparent}
\title{gtkWidgetReparent}
\description{Moves a widget from one \code{\link{GtkContainer}} to another, handling reference
count issues to avoid destroying the widget.}
\usage{gtkWidgetReparent(object, new.parent)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{new.parent}}{a \code{\link{GtkContainer}} to move the widget into}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
