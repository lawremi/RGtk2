\alias{atkTextAddSelection}
\name{atkTextAddSelection}
\title{atkTextAddSelection}
\description{Adds a selection bounded by the specified offsets.}
\usage{atkTextAddSelection(object, start.offset, end.offset)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{start.offset}}{[integer]  the start position of the selected region}
\item{\verb{end.offset}}{[integer]  the offset of the first character after the selected region.}
}
\value{[logical] \code{TRUE} if success, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
