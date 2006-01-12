\alias{pangoLayoutSetJustify}
\name{pangoLayoutSetJustify}
\title{pangoLayoutSetJustify}
\description{Sets whether or not each complete line should be stretched to
fill the entire width of the layout. This stretching is typically
done by adding whitespace, but for some scripts (such as Arabic),
the justification is done by extending the characters.}
\usage{pangoLayoutSetJustify(object, justify)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{justify}}{[logical]  whether the lines in the layout should be justified.}
}
\details{Note that as of Pango-1.4, this functionality is not yet implemented.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
