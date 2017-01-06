\alias{cairo-pdf-surface}
\name{cairo-pdf-surface}
\title{PDF Surfaces}
\description{Rendering PDF documents}
\section{Methods and Functions}{
\code{\link{cairoPdfSurfaceCreate}(filename, width.in.points, height.in.points)}\cr
\code{\link{cairoPdfSurfaceCreateForStream}(write.func, closure, width.in.points, height.in.points)}\cr
\code{\link{cairoPdfSurfaceSetSize}(surface, width.in.points, height.in.points)}\cr
}
\section{Detailed Description}{The PDF surface is used to render cairo graphics to Adobe
PDF files and is a multi-page vector surface backend.}
\references{\url{https://www.cairographics.org/manual/cairo-PDF-Surfaces.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
