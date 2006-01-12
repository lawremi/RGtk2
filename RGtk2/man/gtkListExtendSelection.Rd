\alias{gtkListExtendSelection}
\name{gtkListExtendSelection}
\title{gtkListExtendSelection}
\description{
Extends the selection by moving the anchor according to \code{scroll.type}. Only
in \code{GTK_SELECTION_EXTENDED}.
\strong{WARNING: \code{gtk_list_extend_selection} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListExtendSelection(object, scroll.type, position, auto.start.selection)}
\arguments{
\item{\code{object}}{[\code{\link{GtkList}}] the list widget.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] the direction and length.}
\item{\code{position}}{[numeric] the position if \code{scroll.type} is \code{GTK_SCROLL_JUMP}.}
\item{\code{auto.start.selection}}{[logical] if \code{TRUE}, \code{\link{gtkListStartSelection}} is automatically
carried out before extending the selection.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
