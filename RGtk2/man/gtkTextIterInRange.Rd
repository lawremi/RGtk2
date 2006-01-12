\alias{gtkTextIterInRange}
\name{gtkTextIterInRange}
\title{gtkTextIterInRange}
\description{Checks whether \code{iter} falls in the range [\code{start}, \code{end}).
\code{start} and \code{end} must be in ascending order.}
\usage{gtkTextIterInRange(object, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  start of range}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  end of range}
}
\value{[logical]  \code{TRUE} if \code{iter} is in the range}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
