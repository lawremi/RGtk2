\alias{cairoSetFontFace}
\name{cairoSetFontFace}
\title{cairoSetFontFace}
\description{Replaces the current \verb{\link{CairoFontFace}} object in the \verb{\link{Cairo}} with
\code{font.face}. The replaced font face in the \verb{\link{Cairo}} will be
destroyed if there are no other references to it.}
\usage{cairoSetFontFace(cr, font.face)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{font.face}}{[\verb{\link{CairoFontFace}}]  a \verb{\link{CairoFontFace}}, or \code{NULL} to restore to the default font}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
