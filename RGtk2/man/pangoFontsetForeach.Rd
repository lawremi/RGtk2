\alias{pangoFontsetForeach}
\name{pangoFontsetForeach}
\title{pangoFontsetForeach}
\description{Iterates through all the fonts in a fontset, calling \code{func} for
each one. If \code{func} returns \code{TRUE}, that stops the iteration.}
\usage{pangoFontsetForeach(object, func, data)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontset}}]  a \code{\link{PangoFontset}}}
\item{\verb{func}}{[\code{\link{PangoFontsetForeachFunc}}]  Callback function}
\item{\verb{data}}{[R object]  data to pass to the callback function}
}
\details{  Since 1.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
