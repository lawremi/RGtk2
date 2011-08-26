\alias{gtkToolbarSetDropHighlightItem}
\name{gtkToolbarSetDropHighlightItem}
\title{gtkToolbarSetDropHighlightItem}
\description{Highlights \code{toolbar} to give an idea of what it would look like
if \code{item} was added to \code{toolbar} at the position indicated by \code{index.}.
If \code{item} is \code{NULL}, highlighting is turned off. In that case \code{index.} 
is ignored.}
\usage{gtkToolbarSetDropHighlightItem(object, tool.item = NULL, index)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}}
\item{\verb{tool.item}}{a \code{\link{GtkToolItem}}, or \code{NULL} to turn of highlighting. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{index}}{a position on \code{toolbar}}
}
\details{The \code{tool.item} passed to this function must not be part of any widget
hierarchy. When an item is set as drop highlight item it can not
added to any widget hierarchy or used as highlight item for another
toolbar.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
