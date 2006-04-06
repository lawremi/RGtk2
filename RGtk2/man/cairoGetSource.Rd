\alias{cairoGetSource}
\name{cairoGetSource}
\title{cairoGetSource}
\description{Gets the current source pattern for \code{cr}.}
\usage{cairoGetSource(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\value{[\code{\link{CairoPattern}}]  the current source pattern. To keep a reference to it, you must call
\code{cairo\Pattern\Reference()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
