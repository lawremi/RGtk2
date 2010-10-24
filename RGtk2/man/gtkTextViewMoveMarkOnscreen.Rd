\alias{gtkTextViewMoveMarkOnscreen}
\name{gtkTextViewMoveMarkOnscreen}
\title{gtkTextViewMoveMarkOnscreen}
\description{Moves a mark within the buffer so that it's
located within the currently-visible text area.}
\usage{gtkTextViewMoveMarkOnscreen(object, mark)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{mark}}{a \code{\link{GtkTextMark}}}
}
\value{[logical] \code{TRUE} if the mark moved (wasn't already onscreen)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
