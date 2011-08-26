\alias{gtkIconSourceGetPixbuf}
\name{gtkIconSourceGetPixbuf}
\title{gtkIconSourceGetPixbuf}
\description{Retrieves the source pixbuf, or \code{NULL} if none is set.
In addition, if a filename source is in use, this
function in some cases will return the pixbuf from
loaded from the filename. This is, for example, true
for the GtkIconSource passed to the GtkStyle::\code{renderIcon()}
virtual function. The reference count on the pixbuf is
not incremented.}
\usage{gtkIconSourceGetPixbuf(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconSource}}}}
\value{[\code{\link{GdkPixbuf}}] source pixbuf}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
