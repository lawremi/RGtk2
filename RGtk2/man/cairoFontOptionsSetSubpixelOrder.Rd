\alias{cairoFontOptionsSetSubpixelOrder}
\name{cairoFontOptionsSetSubpixelOrder}
\title{cairoFontOptionsSetSubpixelOrder}
\description{Sets the subpixel order for the font options object. The subpixel
order specifies the order of color elements within each pixel on
the display device when rendering with an antialiasing mode of
\code{CAIRO_ANTIALIAS_SUBPIXEL}. See the documentation for
\code{\link{CairoSubpixelOrder}} for full details.}
\usage{cairoFontOptionsSetSubpixelOrder(options, subpixel.order)}
\arguments{
\item{\verb{options}}{[\code{\link{CairoFontOptions}}]  a \code{\link{CairoFontOptions}}}
\item{\verb{subpixel.order}}{[\code{\link{CairoSubpixelOrder}}]  the new subpixel order}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
