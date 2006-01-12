\alias{gtkWidgetThawChildNotify}
\name{gtkWidgetThawChildNotify}
\title{gtkWidgetThawChildNotify}
\description{Reverts the effect of a previous call to \code{\link{gtkWidgetFreezeChildNotify}}.
This causes all queued "child-notify" signals on \code{widget} to be emitted.}
\usage{gtkWidgetThawChildNotify(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
