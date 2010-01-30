\alias{gdkScreenSetResolution}
\name{gdkScreenSetResolution}
\title{gdkScreenSetResolution}
\description{Sets the resolution for font handling on the screen. This is a
scale factor between points specified in a \verb{\link{PangoFontDescription}}
and cairo units. The default value is 96, meaning that a 10 point
font will be 13 units high. (10 * 96. / 72. = 13.3).}
\usage{gdkScreenSetResolution(object, dpi)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkScreen}}]  a \verb{\link{GdkScreen}}}
\item{\verb{dpi}}{[numeric]  the resolution in "dots per inch". (Physical inches aren't actually
  involved; the terminology is conventional.)}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
