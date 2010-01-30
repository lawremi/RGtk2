\alias{gtkLabelSetLineWrap}
\name{gtkLabelSetLineWrap}
\title{gtkLabelSetLineWrap}
\description{Toggles line wrapping within the \verb{\link{GtkLabel}} widget. \code{TRUE} makes it break
lines if text exceeds the widget's size. \code{FALSE} lets the text get cut off
by the edge of the widget if it exceeds the widget size.}
\usage{gtkLabelSetLineWrap(object, wrap)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkLabel}}]  a \verb{\link{GtkLabel}}}
\item{\verb{wrap}}{[logical]  the setting}
}
\details{Note that setting line wrapping to \code{TRUE} does not make the label
wrap at its parent container's width, because GTK+ widgets
conceptually can't make their requisition depend on the parent
container's size. For a label that wraps at a specific position,
set the label's width using \code{\link{gtkWidgetSetSizeRequest}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
