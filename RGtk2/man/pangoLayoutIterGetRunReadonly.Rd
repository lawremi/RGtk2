\alias{pangoLayoutIterGetRunReadonly}
\name{pangoLayoutIterGetRunReadonly}
\title{pangoLayoutIterGetRunReadonly}
\description{Gets the current run. When iterating by run, at the end of each
line, there's a position with a \code{NULL} run, so this function can return
\code{NULL}. The \code{NULL} run at the end of each line ensures that all lines have
at least one run, even lines consisting of only a newline.}
\usage{pangoLayoutIterGetRunReadonly(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\details{This is a faster alternative to \code{\link{pangoLayoutIterGetRun}},
but the user is not expected
to modify the contents of the run (glyphs, glyph widths, etc.).  
  Since 1.16}
\value{[PangoLayoutRun]  the current run, that should not be modified.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
