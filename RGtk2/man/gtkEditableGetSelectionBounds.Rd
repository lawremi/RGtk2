\alias{gtkEditableGetSelectionBounds}
\name{gtkEditableGetSelectionBounds}
\title{gtkEditableGetSelectionBounds}
\description{Retrieves the selection bound of the editable. start_pos will be filled
with the start of the selection and \code{end.pos} with end. If no text was
selected both will be identical and \code{FALSE} will be returned.}
\usage{gtkEditableGetSelectionBounds(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEditable}}}}
\details{Note that positions are specified in characters, not bytes.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if an area is selected, \code{FALSE} otherwise}
\item{\verb{start}}{location to store the starting position, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{end}}{location to store the end position, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
