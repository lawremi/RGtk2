\alias{gtkEntryGetIconWindow}
\name{gtkEntryGetIconWindow}
\title{gtkEntryGetIconWindow}
\description{Returns the \code{\link{GdkWindow}} which contains the entry's icon at
\code{icon.pos}. This function is useful when drawing something to the
entry in an expose-event callback because it enables the callback
to distinguish between the text window and entry's icon windows.}
\usage{gtkEntryGetIconWindow(object, icon.pos)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{See also \code{\link{gtkEntryGetTextWindow}}.
  Since 2.20}
\value{[\code{\link{GdkWindow}}] the entry's icon window at \code{icon.pos}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
