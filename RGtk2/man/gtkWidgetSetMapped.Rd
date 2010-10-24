\alias{gtkWidgetSetMapped}
\name{gtkWidgetSetMapped}
\title{gtkWidgetSetMapped}
\description{Marks the widget as being realized.}
\usage{gtkWidgetSetMapped(object, mapped)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{mapped}}{\code{TRUE} to mark the widget as mapped}
}
\details{This function should only ever be called in a derived widget's
"map" or "unmap" implementation.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
