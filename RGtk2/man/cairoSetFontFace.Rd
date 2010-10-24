\alias{cairoSetFontFace}
\name{cairoSetFontFace}
\title{cairoSetFontFace}
\description{Replaces the current \code{\link{CairoFontFace}} object in the \code{\link{Cairo}} with
\code{font.face}. The replaced font face in the \code{\link{Cairo}} will be
destroyed if there are no other references to it.}
\usage{cairoSetFontFace(cr, font.face)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  a \code{\link{CairoFontFace}}, or \code{NULL} to restore to the default font}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
