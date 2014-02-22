\alias{pangoFontGetMetrics}
\name{pangoFontGetMetrics}
\title{pangoFontGetMetrics}
\description{Gets overall metric information for a font. Since the metrics may be
substantially different for different scripts, a language tag can
be provided to indicate that the metrics should be retrieved that
correspond to the script(s) used by that language.}
\usage{pangoFontGetMetrics(object, language = NULL)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}}
\item{\verb{language}}{[\code{\link{PangoLanguage}}]  language tag used to determine which script to get the metrics
           for, or \code{NULL} to indicate to get the metrics for the entire
           font.}
}
\details{If \code{font} is \code{NULL}, this function gracefully sets some sane values in the
output variables and returns.  }
\value{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
