\alias{gdkDisplaySupportsClipboardPersistence}
\name{gdkDisplaySupportsClipboardPersistence}
\title{gdkDisplaySupportsClipboardPersistence}
\description{Returns whether the speicifed display supports clipboard
persistance; i.e. if it's possible to store the clipboard data after an
application has quit. On X11 this checks if a clipboard daemon is
running.}
\usage{gdkDisplaySupportsClipboardPersistence(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.6}
\value{[logical] \code{TRUE} if the display supports clipboard persistance.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
