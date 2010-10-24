\alias{cairoPatternSetMatrix}
\name{cairoPatternSetMatrix}
\title{cairoPatternSetMatrix}
\description{Sets the pattern's transformation matrix to \code{matrix}. This matrix is
a transformation from user space to pattern space.}
\usage{cairoPatternSetMatrix(pattern, matrix)}
\arguments{
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
}
\details{When a pattern is first created it always has the identity matrix
for its transformation matrix, which means that pattern space is
initially identical to user space.
  
Important: Please note that the direction of this transformation
matrix is from user space to pattern space. This means that if you
imagine the flow from a pattern to user space (and on to device
space), then coordinates in that flow will be transformed by the
inverse of the pattern matrix.
  
For example, if you want to make a pattern appear twice as large as
it does by default the correct code to use is:
  \preformatted{
matrix$initScale(0.5, 0.5)
pattern$setMatrix(matrix)
}  
Meanwhile, using values of 2.0 rather than 0.5 in the code above
would cause the pattern to appear at half of its default size.
  
Also, please note the discussion of the user-space locking
semantics of \code{\link{cairoSetSource}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
