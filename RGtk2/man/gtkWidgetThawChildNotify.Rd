\alias{gtkWidgetThawChildNotify}
\name{gtkWidgetThawChildNotify}
\title{gtkWidgetThawChildNotify}
\description{Reverts the effect of a previous call to \code{\link{gtkWidgetFreezeChildNotify}}.
This causes all queued \code{\link{gtkWidgetChildNotify}} signals on \code{widget} to be 
emitted.}
\usage{gtkWidgetThawChildNotify(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
