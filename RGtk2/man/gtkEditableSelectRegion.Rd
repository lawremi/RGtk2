\alias{gtkEditableSelectRegion}
\name{gtkEditableSelectRegion}
\title{gtkEditableSelectRegion}
\description{Selects a region of text. The characters that
are selected are those characters at positions from
\code{start.pos} up to, but not including \code{end.pos}. If 
\code{end.pos} is negative, then the the characters selected
will be those characters from \code{start.pos} to the end
of the text.}
\usage{gtkEditableSelectRegion(object, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEditable}}] a \code{\link{GtkEditable}} widget.}
\item{\code{start}}{[integer] the starting position.}
\item{\code{end}}{[integer] the end position.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
