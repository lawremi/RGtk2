\alias{cairoScale}
\name{cairoScale}
\title{cairoScale}
\description{Modifies the current transformation matrix (CTM) by scaling the X
and Y user-space axes by \code{sx} and \code{sy} respectively. The scaling of
the axes takes place after any existing transformation of user
space.}
\usage{cairoScale(cr, sx, sy)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{sx}}{[numeric]  scale factor for the X dimension}
\item{\verb{sy}}{[numeric]  scale factor for the Y dimension}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
