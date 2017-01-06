\alias{cairo-ps-surface}
\alias{CairoPsLevel}
\name{cairo-ps-surface}
\title{PostScript Surfaces}
\description{Rendering PostScript documents}
\section{Methods and Functions}{
\code{\link{cairoPsSurfaceCreate}(filename, width.in.points, height.in.points)}\cr
\code{\link{cairoPsSurfaceCreateForStream}(write.func, closure, width.in.points, height.in.points)}\cr
\code{\link{cairoPsSurfaceRestrictToLevel}(surface, level)}\cr
\code{\link{cairoPsGetLevels}()}\cr
\code{\link{cairoPsLevelToString}(level)}\cr
\code{\link{cairoPsSurfaceSetEps}(surface, eps)}\cr
\code{\link{cairoPsSurfaceGetEps}(surface)}\cr
\code{\link{cairoPsSurfaceSetSize}(surface, width.in.points, height.in.points)}\cr
\code{\link{cairoPsSurfaceDscBeginSetup}(surface)}\cr
\code{\link{cairoPsSurfaceDscBeginPageSetup}(surface)}\cr
\code{\link{cairoPsSurfaceDscComment}(surface, comment)}\cr
}
\section{Detailed Description}{The PostScript surface is used to render cairo graphics to Adobe
PostScript files and is a multi-page vector surface backend.}
\section{Enums and Flags}{\describe{\item{\verb{CairoPsLevel}}{
\code{\link{CairoPsLevel}} is used to describe the language level of the
PostScript Language Reference that a generated PostScript file will
conform to.  

\describe{
\item{\verb{2}}{ The language level 2 of the PostScript specification.}
\item{\verb{3}}{ The language level 3 of the PostScript specification.}
}

}}}
\references{\url{https://www.cairographics.org/manual/cairo-PostScript-Surfaces.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
