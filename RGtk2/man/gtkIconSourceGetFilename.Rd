\alias{gtkIconSourceGetFilename}
\name{gtkIconSourceGetFilename}
\title{gtkIconSourceGetFilename}
\description{Retrieves the source filename, or \code{NULL} if none is set. The
filename is not a copy, and should not be modified or expected to
persist beyond the lifetime of the icon source.}
\usage{gtkIconSourceGetFilename(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconSource}}}}
\value{[character]  image filename. This string must not be modified
or freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
