\alias{gtkTextIterGetPixbuf}
\name{gtkTextIterGetPixbuf}
\title{gtkTextIterGetPixbuf}
\description{If the element at \code{iter} is a pixbuf, the pixbuf is returned
(with no new reference count added). Otherwise,
\code{NULL} is returned.}
\usage{gtkTextIterGetPixbuf(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[\code{\link{GdkPixbuf}}] the pixbuf at \code{iter}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
