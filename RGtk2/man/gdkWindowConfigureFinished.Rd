\alias{gdkWindowConfigureFinished}
\name{gdkWindowConfigureFinished}
\title{gdkWindowConfigureFinished}
\description{Signal to the window system that the application has finished
handling Configure events it has received. Window Managers can
use this to better synchronize the frame repaint with the
application. GTK+ applications will automatically call this
function when appropriate.}
\usage{gdkWindowConfigureFinished(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{This function can only be called if \code{\link{gdkWindowEnableSynchronizedConfigure}}
was called previously.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
