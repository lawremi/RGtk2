\alias{atkTextGetSelection}
\name{atkTextGetSelection}
\title{atkTextGetSelection}
\description{Gets the text from the specified selection.}
\usage{atkTextGetSelection(object, selection.num)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{selection.num}}{[integer]  The selection number.  The selected regions are
assigned numbers that correspond to how far the region is from the
start of the text.  The selected region closest to the beginning
of the text region is assigned the number 0, etc.  Note that adding,
moving or deleting a selected region can change the numbering.}
}
\value{
A list containing the following elements:
\item{retval}{[character]  the selected text.}
\item{\verb{start.offset}}{[integer]  passes back the start position of the selected region}
\item{\verb{end.offset}}{[integer]  passes back the end position of (e.g. offset immediately past) 
the selected region}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
