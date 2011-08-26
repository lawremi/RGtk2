\alias{gtkSelectionDataGetText}
\name{gtkSelectionDataGetText}
\title{gtkSelectionDataGetText}
\description{Gets the contents of the selection data as a UTF-8 string.}
\usage{gtkSelectionDataGetText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}}}}
\value{[raw] if the selection data contained a recognized
text type and it could be converted to UTF-8, a newly allocated
string containing the converted text, otherwise \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
