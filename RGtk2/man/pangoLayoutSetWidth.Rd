\alias{pangoLayoutSetWidth}
\name{pangoLayoutSetWidth}
\title{pangoLayoutSetWidth}
\description{Sets the width to which the lines of the \code{\link{PangoLayout}} should wrap or
ellipsized.  The default value is -1: no width set.}
\usage{pangoLayoutSetWidth(object, width)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}.}
\item{\verb{width}}{[integer]  the desired width in Pango units, or -1 to indicate that no
        wrapping or ellipsization should be performed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
