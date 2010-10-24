\alias{gtkWidgetSetRealized}
\name{gtkWidgetSetRealized}
\title{gtkWidgetSetRealized}
\description{Marks the widget as being realized.}
\usage{gtkWidgetSetRealized(object, realized)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{realized}}{\code{TRUE} to mark the widget as realized}
}
\details{This function should only ever be called in a derived widget's
"realize" or "unrealize" implementation.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
