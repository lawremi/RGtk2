\alias{gtkEntryGetTextWindow}
\name{gtkEntryGetTextWindow}
\title{gtkEntryGetTextWindow}
\description{Returns the \code{\link{GdkWindow}} which contains the text. This function is
useful when drawing something to the entry in an expose-event
callback because it enables the callback to distinguish between
the text window and entry's icon windows.}
\usage{gtkEntryGetTextWindow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{See also \code{\link{gtkEntryGetIconWindow}}.
  Since 2.20}
\value{[\code{\link{GdkWindow}}] the entry's text window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
