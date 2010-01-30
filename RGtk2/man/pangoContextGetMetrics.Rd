\alias{pangoContextGetMetrics}
\name{pangoContextGetMetrics}
\title{pangoContextGetMetrics}
\description{Get overall metric information for a particular font
description.  Since the metrics may be substantially different for
different scripts, a language tag can be provided to indicate that
the metrics should be retrieved that correspond to the script(s)
used by that language.}
\usage{pangoContextGetMetrics(object, desc, language = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoContext}}]  a \verb{\link{PangoContext}}}
\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}} structure}
\item{\verb{language}}{[\verb{\link{PangoLanguage}}]  language tag used to determine which script to get the metrics
           for. \code{NULL} means that the language tag from the context will
           be used. If no language tag is set on the context, metrics
           large enough to cover a range of languages will be returned.
           The process of determining such metrics is slow, so it is best
           to always make sure some real language tag will be used.}
}
\details{The \verb{\link{PangoFontDescription}} is interpreted in the same way as
by \code{\link{pangoItemize}}, and the family name may be a comma separated
list of figures. If characters from multiple of these families
would be used to render the string, then the returned fonts would
be a composite of the metrics for the fonts loaded for the
individual families.  }
\value{[\verb{\link{PangoFontMetrics}}]  a \verb{\link{PangoFontMetrics}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
