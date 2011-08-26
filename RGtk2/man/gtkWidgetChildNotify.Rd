\alias{gtkWidgetChildNotify}
\name{gtkWidgetChildNotify}
\title{gtkWidgetChildNotify}
\description{Emits a \code{\link{gtkWidgetChildNotify}} signal for the 
child property \code{child.property} 
on \code{widget}.}
\usage{gtkWidgetChildNotify(object, child.property)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{child.property}}{the name of a child property installed on the
class of \code{widget}'s parent}
}
\details{This is the analogue of \code{gObjectNotify()} for child properties.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
