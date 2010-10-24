\alias{gtkEditableDeleteText}
\name{gtkEditableDeleteText}
\title{gtkEditableDeleteText}
\description{Deletes a sequence of characters. The characters that are deleted are 
those characters at positions from \code{start.pos} up to, but not including 
\code{end.pos}. If \code{end.pos} is negative, then the the characters deleted
are those from \code{start.pos} to the end of the text.}
\usage{gtkEditableDeleteText(object, start.pos, end.pos)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEditable}}}
\item{\verb{start.pos}}{start position}
\item{\verb{end.pos}}{end position}
}
\details{Note that the positions are specified in characters, not bytes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
