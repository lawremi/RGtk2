\alias{gdkDisplayStoreClipboard}
\name{gdkDisplayStoreClipboard}
\title{gdkDisplayStoreClipboard}
\description{Issues a request to the clipboard manager to store the
clipboard data. On X11, this is a special program that works
according to the freedesktop clipboard specification, available at

http://www.freedesktop.org/Standards/clipboard-manager-spec (\url{http://www.freedesktop.org/Standards/clipboard-manager-spec}).}
\usage{gdkDisplayStoreClipboard(object, clipboard.window, targets)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{clipboard.window}}{a \code{\link{GdkWindow}} belonging to the clipboard owner}
\item{\verb{targets}}{a list of targets that should be saved, or \code{NULL}
if all available targets should be saved.}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
