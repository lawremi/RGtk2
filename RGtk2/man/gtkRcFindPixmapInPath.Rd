\alias{gtkRcFindPixmapInPath}
\name{gtkRcFindPixmapInPath}
\title{gtkRcFindPixmapInPath}
\description{Looks up a file in pixmap path for the specified \code{\link{GtkSettings}}.
If the file is not found, it outputs a warning message using
\code{gWarning()} and returns \code{NULL}.}
\usage{gtkRcFindPixmapInPath(settings, scanner = NULL, pixmap.file)}
\arguments{
\item{\verb{settings}}{a \code{\link{GtkSettings}}}
\item{\verb{scanner}}{Scanner used to get line number information for the
warning message, or \code{NULL}}
\item{\verb{pixmap.file}}{name of the pixmap file to locate.}
}
\value{[character] the filename.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
