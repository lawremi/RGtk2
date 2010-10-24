\alias{gdkDisplaySync}
\name{gdkDisplaySync}
\title{gdkDisplaySync}
\description{Flushes any requests queued for the windowing system and waits until all
requests have been handled. This is often used for making sure that the
display is synchronized with the current state of the program. Calling
\code{\link{gdkDisplaySync}} before \code{gdkErrorTrapPop()} makes sure that any errors
generated from earlier requests are handled before the error trap is 
removed.}
\usage{gdkDisplaySync(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{This is most useful for X11. On windowing systems where requests are
handled synchronously, this function will do nothing.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
