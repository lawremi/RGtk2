\alias{gtkSelectionDataGetPixbuf}
\name{gtkSelectionDataGetPixbuf}
\title{gtkSelectionDataGetPixbuf}
\description{Gets the contents of the selection data as a \code{\link{GdkPixbuf}}.}
\usage{gtkSelectionDataGetPixbuf(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}}}}
\details{Since 2.6}
\value{[\code{\link{GdkPixbuf}}] if the selection data contained a recognized
image type and it could be converted to a \code{\link{GdkPixbuf}}, a
newly allocated pixbuf is returned, otherwise \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
