\alias{gtkTextIterGetTags}
\name{gtkTextIterGetTags}
\title{gtkTextIterGetTags}
\description{Returns a list of tags that apply to \code{iter}, in ascending order of
priority (highest-priority tags are last). The \code{\link{GtkTextTag}} in the
list don't have a reference added, but you have to free the list
itself.}
\usage{gtkTextIterGetTags(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[list] list of \code{\link{GtkTextTag}}. \emph{[  \acronym{element-type}   GtkTextTag][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
