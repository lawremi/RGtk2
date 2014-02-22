\alias{pangoLayoutSetIndent}
\name{pangoLayoutSetIndent}
\title{pangoLayoutSetIndent}
\description{Sets the width in Pango units to indent each paragraph. A negative value
of \code{indent} will produce a hanging indentation. That is, the first line will
have the full width, and subsequent lines will be indented by the
absolute value of \code{indent}.}
\usage{pangoLayoutSetIndent(object, indent)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}.}
\item{\verb{indent}}{[integer]  the amount by which to indent.}
}
\details{The indent setting is ignored if layout alignment is set to
\code{PANGO_ALIGN_CENTER}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
