\alias{gdkScreenGetRgbaVisual}
\name{gdkScreenGetRgbaVisual}
\title{gdkScreenGetRgbaVisual}
\description{Gets a visual to use for creating windows or pixmaps with an
alpha channel. See the docs for \code{\link{gdkScreenGetRgbaColormap}}
for caveats.}
\usage{gdkScreenGetRgbaVisual(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}}}
\details{Since 2.8}
\value{[\code{\link{GdkVisual}}] a visual to use for windows with an
alpha channel or \code{NULL} if the capability is not available. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
