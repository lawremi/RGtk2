\alias{gtkWidgetIsToplevel}
\name{gtkWidgetIsToplevel}
\title{gtkWidgetIsToplevel}
\description{Determines whether \code{widget} is a toplevel widget. Currently only
\code{\link{GtkWindow}} and \code{\link{GtkInvisible}} are toplevel widgets. Toplevel
widgets have no parent widget.}
\usage{gtkWidgetIsToplevel(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Since 2.18}
\value{[logical] \code{TRUE} if \code{widget} is a toplevel, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
