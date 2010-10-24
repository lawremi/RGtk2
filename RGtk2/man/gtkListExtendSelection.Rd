\alias{gtkListExtendSelection}
\name{gtkListExtendSelection}
\title{gtkListExtendSelection}
\description{
Extends the selection by moving the anchor according to \code{scroll.type}. Only
in \verb{GTK_SELECTION_EXTENDED}.
\strong{WARNING: \code{gtk_list_extend_selection} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListExtendSelection(object, scroll.type, position, auto.start.selection)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{scroll.type}}{the direction and length.}
\item{\verb{position}}{the position if \code{scroll.type} is \verb{GTK_SCROLL_JUMP}.}
\item{\verb{auto.start.selection}}{if \code{TRUE}, \code{\link{gtkListStartSelection}} is automatically
carried out before extending the selection.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
