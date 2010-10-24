\alias{cairoSetScaledFont}
\name{cairoSetScaledFont}
\title{cairoSetScaledFont}
\description{Replaces the current font face, font matrix, and font options in
the \code{\link{Cairo}} with those of the \code{\link{CairoScaledFont}}.  Except for
some translation, the current CTM of the \code{\link{Cairo}} should be the
same as that of the \code{\link{CairoScaledFont}}, which can be accessed
using \code{\link{cairoScaledFontGetCtm}}.}
\usage{cairoSetScaledFont(cr, scaled.font)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}
}
\details{  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
