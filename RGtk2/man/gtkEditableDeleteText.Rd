\alias{gtkEditableDeleteText}
\name{gtkEditableDeleteText}
\title{gtkEditableDeleteText}
\description{Deletes a sequence of characters. The characters that
are deleted are those characters at positions from
\code{start.pos} up to, but not including \code{end.pos}. If 
\code{end.pos} is negative, then the the characters deleted
will be those characters from \code{start.pos} to the end
of the text.}
\usage{gtkEditableDeleteText(object, start.pos, end.pos)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkEditable}}] a \verb{\link{GtkEditable}} widget.}
\item{\verb{start.pos}}{[integer] the starting position.}
\item{\verb{end.pos}}{[integer] the end position.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
