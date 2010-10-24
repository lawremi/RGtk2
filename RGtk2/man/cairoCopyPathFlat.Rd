\alias{cairoCopyPathFlat}
\name{cairoCopyPathFlat}
\title{cairoCopyPathFlat}
\description{Gets a flattened copy of the current path and returns it to the
user as a \code{\link{CairoPath}}. See \code{\link{CairoPathData}} for hints on
how to iterate over the returned data structure.}
\usage{cairoCopyPathFlat(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This function is like \code{\link{cairoCopyPath}} except that any curves
in the path will be approximated with piecewise-linear
approximations, (accurate to within the current tolerance
value). That is, the result is guaranteed to not have any elements
of type \code{CAIRO_PATH_CURVE_TO} which will instead be replaced by a
series of \code{CAIRO_PATH_LINE_TO} elements.
  
This function will always return a valid pointer, but the result
will have no data (\code{data==  NULL} and
\code{num_data==0}), if either of the following
conditions hold:
  \enumerate{
\item 
\item 
}  }
\value{[\code{\link{CairoPath}}]  the copy of the current path.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
