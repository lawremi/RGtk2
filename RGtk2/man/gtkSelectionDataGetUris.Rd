\alias{gtkSelectionDataGetUris}
\name{gtkSelectionDataGetUris}
\title{gtkSelectionDataGetUris}
\description{Gets the contents of the selection data as list of URIs.}
\usage{gtkSelectionDataGetUris(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}}}}
\details{Since 2.6}
\value{[character] if
the selection data contains a list of
URIs, a newly allocated string list
containing the URIs, otherwise \code{NULL}. \emph{[  \acronym{array}   zero-terminated=1][  \acronym{element-type}   utf8][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
