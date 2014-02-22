\alias{pangoLayoutIterGetRun}
\name{pangoLayoutIterGetRun}
\title{pangoLayoutIterGetRun}
\description{Gets the current run. When iterating by run, at the end of each
line, there's a position with a \code{NULL} run, so this function can return
\code{NULL}. The \code{NULL} run at the end of each line ensures that all lines have
at least one run, even lines consisting of only a newline.}
\usage{pangoLayoutIterGetRun(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\details{Use the faster \code{\link{pangoLayoutIterGetRunReadonly}} if you do not plan
to modify the contents of the run (glyphs, glyph widths, etc.).  }
\value{[PangoLayoutRun]  the current run.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
