\alias{gtkWidgetChildNotify}
\name{gtkWidgetChildNotify}
\title{gtkWidgetChildNotify}
\description{Emits a "child-notify" signal for the 
child property \code{child.property} 
on \code{widget}.}
\usage{gtkWidgetChildNotify(object, child.property)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{child.property}}{[character]  the name of a child property installed on the 
                 class of \code{widget}'s parent.}
}
\details{This is the analogue of \code{g\Object\Notify()} for child properties.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
