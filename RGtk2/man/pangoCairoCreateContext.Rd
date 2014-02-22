\alias{pangoCairoCreateContext}
\name{pangoCairoCreateContext}
\title{pangoCairoCreateContext}
\description{Creates a context object set up to match the current transformation
and target surface of the Cairo context.  This context can then be
used to create a layout using \code{\link{pangoLayoutNew}}.}
\usage{pangoCairoCreateContext(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}}
\details{This function is a convenience function that creates a context using
the default font map, then updates it to \code{cr}.  If you just need to
create a layout for use with \code{cr} and do not need to access \code{\link{PangoContext}}
directly, you can use \code{\link{pangoCairoCreateLayout}} instead.  
  Since 1.22}
\value{[\code{\link{PangoContext}}]  the newly created \code{\link{PangoContext}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
