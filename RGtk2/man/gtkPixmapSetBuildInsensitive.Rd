\alias{gtkPixmapSetBuildInsensitive}
\name{gtkPixmapSetBuildInsensitive}
\title{gtkPixmapSetBuildInsensitive}
\description{
Sets wether an extra pixmap should be automatically created and used
when the pixmap is insensitive. The default value is \code{TRUE}.
\strong{WARNING: \code{gtk_pixmap_set_build_insensitive} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapSetBuildInsensitive(object, build)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPixmap}}] a \code{\link{GtkPixmap}}.}
\item{\code{build}}{[logical] set to \code{TRUE} if an extra pixmap should be automatically created to use
when the pixmap is insensitive.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
