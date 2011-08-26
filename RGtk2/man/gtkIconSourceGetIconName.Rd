\alias{gtkIconSourceGetIconName}
\name{gtkIconSourceGetIconName}
\title{gtkIconSourceGetIconName}
\description{Retrieves the source icon name, or \code{NULL} if none is set. The
icon_name is not a copy, and should not be modified or expected to
persist beyond the lifetime of the icon source.}
\usage{gtkIconSourceGetIconName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconSource}}}}
\value{[character] icon name. This string must not be modified or freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
