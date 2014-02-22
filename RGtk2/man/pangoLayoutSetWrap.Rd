\alias{pangoLayoutSetWrap}
\name{pangoLayoutSetWrap}
\title{pangoLayoutSetWrap}
\description{Sets the wrap mode; the wrap mode only has effect if a width
is set on the layout with \code{\link{pangoLayoutSetWidth}}.
To turn off wrapping, set the width to -1.}
\usage{pangoLayoutSetWrap(object, wrap)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{wrap}}{[\code{\link{PangoWrapMode}}]  the wrap mode}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
