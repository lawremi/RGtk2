\alias{gtkEditableGetChars}
\name{gtkEditableGetChars}
\title{gtkEditableGetChars}
\description{Retrieves a sequence of characters. The characters that
are retrieved are those characters at positions from
\code{start.pos} up to, but not including \code{end.pos}. If 
\code{end.pos} is negative, then the the characters retrieved
will be those characters from \code{start.pos} to the end
of the text.}
\usage{gtkEditableGetChars(object, start.pos, end.pos)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEditable}}] a \code{\link{GtkEditable}} widget.}
\item{\code{start.pos}}{[integer] the starting position.}
\item{\code{end.pos}}{[integer] the end position.}
}
\value{[character] the characters in the indicated region.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
