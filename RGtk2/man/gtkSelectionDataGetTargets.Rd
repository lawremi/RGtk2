\alias{gtkSelectionDataGetTargets}
\name{gtkSelectionDataGetTargets}
\title{gtkSelectionDataGetTargets}
\description{Gets the contents of \code{selection.data} as a list of targets.
This can be used to interpret the results of getting
the standard TARGETS target that is always supplied for
any selection.}
\usage{gtkSelectionDataGetTargets(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}} object}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{selection.data} contains a valid
array of targets, otherwise \code{FALSE}.}
\item{\verb{targets}}{location to store a list of targets. The result
stored here must be freed with \code{gFree()}.}
\item{\verb{n.atoms}}{location to store number of items in \code{targets}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
