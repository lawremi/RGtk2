\alias{CAIRO}
\name{CAIRO}
\title{CAIRO}
\description{Cairo is a 2D graphics library with support for multiple output devices. Currently supported output targets include the X Window System, win32, and image buffers.}
\details{
The RGtk binding to the CAIRO library consists of the following components:
\describe{
\item{\link{cairo-Font-Options}}{How a font should be rendered}
\item{\link{cairo-cairo-font-face-t}}{Base class for fonts}
\item{\link{cairo-Image-Surfaces}}{Rendering to memory buffers}
\item{\link{cairo-cairo-matrix-t}}{Generic matrix operations}
\item{\link{cairo-Paths}}{Creating paths and manipulating path data}
\item{\link{cairo-Patterns}}{Gradients and filtered sources}
\item{\link{cairo-PDF-Surfaces}}{Rendering PDF documents}
\item{\link{cairo-PNG-Support}}{Reading and writing PNG images}
\item{\link{cairo-PostScript-Surfaces}}{Rendering PostScript documents}
\item{\link{cairo-Scaled-Fonts}}{Caching metrics for a particular font size}
\item{\link{cairo-Error-handling}}{Decoding cairo's status}
\item{\link{cairo-cairo-surface-t}}{Base class for surfaces}
\item{\link{cairo-SVG-Surfaces}}{Rendering SVG documents}
\item{\link{cairo-Text}}{Rendering text and sets of glyphs}
\item{\link{cairo-Transformations}}{Manipulating the current transformation matrix}
\item{\link{cairo-Types}}{Generic data types used in the cairo API}
\item{\link{cairo-Version-Information}}{Compile-time and run-time version checks.}
\item{\link{cairo-cairo-t}}{The cairo drawing context}
}
}
\references{\url{http://www.cairographics.org/manual}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{interface}
