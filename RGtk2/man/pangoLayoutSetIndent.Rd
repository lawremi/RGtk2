\alias{pangoLayoutSetIndent}
\name{pangoLayoutSetIndent}
\title{pangoLayoutSetIndent}
\description{Sets the width in pango units to indent each paragraph. A negative value
of \code{indent} will produce a hanging indent. That is, the first line will
have the full width, and subsequent lines will be indented by the
absolute value of \code{indent}.}
\usage{pangoLayoutSetIndent(object, indent)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}.}
\item{\code{indent}}{[integer]  the amount by which to indentset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
