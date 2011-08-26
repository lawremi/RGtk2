\alias{gtkTextBufferGetSelectionBounds}
\name{gtkTextBufferGetSelectionBounds}
\title{gtkTextBufferGetSelectionBounds}
\description{Returns \code{TRUE} if some text is selected; places the bounds
of the selection in \code{start} and \code{end} (if the selection has length 0,
then \code{start} and \code{end} are filled in with the same value).
\code{start} and \code{end} will be in ascending order. If \code{start} and \code{end} are
NULL, then they are not filled in, but the return value still indicates
whether text is selected.}
\usage{gtkTextBufferGetSelectionBounds(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}} a \code{\link{GtkTextBuffer}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] whether the selection has nonzero length}
\item{\verb{start}}{iterator to initialize with selection start}
\item{\verb{end}}{iterator to initialize with selection end}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
