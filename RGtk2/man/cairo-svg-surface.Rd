\alias{cairo-svg-surface}
\alias{CairoSvgVersion}
\name{cairo-svg-surface}
\title{SVG Surfaces}
\description{Rendering SVG documents}
\section{Methods and Functions}{
\code{\link{cairoSvgSurfaceCreate}(filename, width.in.points, height.in.points)}\cr
\code{\link{cairoSvgSurfaceCreateForStream}(write.func, closure, width.in.points, height.in.points)}\cr
\code{\link{cairoSvgSurfaceRestrictToVersion}(surface, version)}\cr
\code{\link{cairoSvgGetVersions}(versions, num.versions)}\cr
\code{\link{cairoSvgVersionToString}(version)}\cr
}
\section{Detailed Description}{The SVG surface is used to render cairo graphics to
SVG files and is a multi-page vector surface backend.}
\section{Enums and Flags}{\describe{\item{\verb{CairoSvgVersion}}{
\code{\link{CairoSvgVersion}} is used to describe the version number of the SVG
specification that a generated SVG file will conform to.  

\describe{
\item{\verb{1-1}}{ The version 1.1 of the SVG specification.}
\item{\verb{1-2}}{ The version 1.2 of the SVG specification.}
}

}}}
\references{\url{https://www.cairographics.org/manual/cairo-SVG-Surfaces.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
