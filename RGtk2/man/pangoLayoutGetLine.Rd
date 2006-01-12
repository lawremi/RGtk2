\alias{pangoLayoutGetLine}
\name{pangoLayoutGetLine}
\title{pangoLayoutGetLine}
\description{Retrieves a particular line from a \code{\link{PangoLayout}}.}
\usage{pangoLayoutGetLine(object, line)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{line}}{[integer]  the index of a line, which must be between 0 and
       \code{pango_layout_get_line_count(layout) - 1}, inclusive.}
}
\value{[\code{\link{PangoLayoutLine}}]  the requested \code{\link{PangoLayoutLine}}, or \code{NULL} if the
              index is out of range. This layout line can
              be ref'ed and retained, but will become invalid
              if changes are made to the \code{\link{PangoLayout}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
