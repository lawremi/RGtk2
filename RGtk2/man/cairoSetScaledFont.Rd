\alias{cairoSetScaledFont}
\name{cairoSetScaledFont}
\title{cairoSetScaledFont}
\description{Replaces the current font face, font matrix, and font options in
the \verb{\link{Cairo}} with those of the \verb{\link{CairoScaledFont}}.  Except for
some translation, the current CTM of the \verb{\link{Cairo}} should be the
same as that of the \verb{\link{CairoScaledFont}}, which can be accessed
using \code{\link{cairoScaledFontGetCtm}}.}
\usage{cairoSetScaledFont(cr, scaled.font)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{scaled.font}}{[\verb{\link{CairoScaledFont}}]  a \verb{\link{CairoScaledFont}}}
}
\details{  Since  1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
