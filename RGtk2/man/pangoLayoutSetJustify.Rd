\alias{pangoLayoutSetJustify}
\name{pangoLayoutSetJustify}
\title{pangoLayoutSetJustify}
\description{Sets whether each complete line should be stretched to
fill the entire width of the layout. This stretching is typically
done by adding whitespace, but for some scripts (such as Arabic),
the justification may be done in more complex ways, like extending
the characters.}
\usage{pangoLayoutSetJustify(object, justify)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{justify}}{[logical]  whether the lines in the layout should be justified.}
}
\details{Note that this setting is not implemented and so is ignored in Pango
older than 1.18.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
