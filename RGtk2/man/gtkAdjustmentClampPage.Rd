\alias{gtkAdjustmentClampPage}
\name{gtkAdjustmentClampPage}
\title{gtkAdjustmentClampPage}
\description{Updates the \code{\link{GtkAdjustment}} \code{value} to ensure that the range between \code{lower}
and \code{upper} is in the current page (i.e. between \code{value} and \code{value} +
\code{page.size}).
If the range is larger than the page size, then only the start of it will
be in the current page.
A "changed" signal will be emitted if the value is changed.}
\usage{gtkAdjustmentClampPage(object, lower, upper)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAdjustment}}.}
\item{\verb{lower}}{the lower value.}
\item{\verb{upper}}{the upper value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
