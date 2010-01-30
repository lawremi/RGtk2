\alias{gtkWidgetReparent}
\name{gtkWidgetReparent}
\title{gtkWidgetReparent}
\description{Moves a widget from one \verb{\link{GtkContainer}} to another, handling reference
count issues to avoid destroying the widget.}
\usage{gtkWidgetReparent(object, new.parent)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{new.parent}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkContainer}} to move the widget into}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
