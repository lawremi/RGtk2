\alias{gtkAdjustmentSetUpper}
\name{gtkAdjustmentSetUpper}
\title{gtkAdjustmentSetUpper}
\description{Sets the maximum value of the adjustment.}
\usage{gtkAdjustmentSetUpper(object, upper)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAdjustment}}}
\item{\verb{upper}}{the new maximum value}
}
\details{Note that values will be restricted by
\code{upper - page-size} if the page-size
property is nonzero.
  
See \code{\link{gtkAdjustmentSetLower}} about how to compress multiple
emissions of the "changed" signal when setting multiple adjustment
properties.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
