\alias{atkTextSetSelection}
\name{atkTextSetSelection}
\title{atkTextSetSelection}
\description{Changes the start and end offset of the specified selection.}
\usage{atkTextSetSelection(object, selection.num, start.offset, end.offset)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{selection.num}}{[integer]  The selection number.  The selected regions are
assigned numbers that correspond to how far the region is from the
start of the text.  The selected region closest to the beginning
of the text region is assigned the number 0, etc.  Note that adding,
moving or deleting a selected region can change the numbering.}
\item{\verb{start.offset}}{[integer]  the new start position of the selection}
\item{\verb{end.offset}}{[integer]  the new end position of (e.g. offset immediately past) 
the selection}
}
\value{[logical] \code{TRUE} if success, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
