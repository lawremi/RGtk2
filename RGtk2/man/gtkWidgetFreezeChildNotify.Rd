\alias{gtkWidgetFreezeChildNotify}
\name{gtkWidgetFreezeChildNotify}
\title{gtkWidgetFreezeChildNotify}
\description{Stops emission of \code{\link{gtkWidgetChildNotify}} signals on \code{widget}. The 
signals are queued until \code{\link{gtkWidgetThawChildNotify}} is called 
on \code{widget}. }
\usage{gtkWidgetFreezeChildNotify(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{This is the analogue of \code{gObjectFreezeNotify()} for child properties.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
