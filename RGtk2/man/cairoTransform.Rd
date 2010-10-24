\alias{cairoTransform}
\name{cairoTransform}
\title{cairoTransform}
\description{Modifies the current transformation matrix (CTM) by applying
\code{matrix} as an additional transformation. The new transformation of
user space takes place after any existing transformation.}
\usage{cairoTransform(cr, matrix)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a transformation to be applied to the user-space axes}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
