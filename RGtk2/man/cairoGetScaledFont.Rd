\alias{cairoGetScaledFont}
\name{cairoGetScaledFont}
\title{cairoGetScaledFont}
\description{Gets the current scaled font for a \verb{\link{Cairo}}.}
\usage{cairoGetScaledFont(cr)}
\arguments{\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}}
\details{  Since  1.4}
\value{[\verb{\link{CairoScaledFont}}]  the current scaled font. To keep a reference to it.

This function never returns \code{NULL}. If memory cannot be allocated, a
special "nil" \verb{\link{CairoScaledFont}} object will be returned on which
\code{\link{cairoScaledFontStatus}} returns \code{CAIRO_STATUS_NO_MEMORY}. Using
this nil object will cause its error state to propagate to other
objects it is passed to, (for example, calling
\code{\link{cairoSetScaledFont}} with a nil font will trigger an error that
will shutdown the \verb{\link{Cairo}} object).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
