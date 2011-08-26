\alias{gdkCursorGetImage}
\name{gdkCursorGetImage}
\title{gdkCursorGetImage}
\description{Returns a \code{\link{GdkPixbuf}} with the image used to display the cursor.}
\usage{gdkCursorGetImage(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkCursor}}}}
\details{Note that depending on the capabilities of the windowing system and 
on the cursor, GDK may not be able to obtain the image data. In this 
case, \code{NULL} is returned.
  Since 2.8}
\value{[\code{\link{GdkPixbuf}}] a \code{\link{GdkPixbuf}} representing \code{cursor}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
