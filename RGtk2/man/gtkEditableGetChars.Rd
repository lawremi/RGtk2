\alias{gtkEditableGetChars}
\name{gtkEditableGetChars}
\title{gtkEditableGetChars}
\description{Retrieves a sequence of characters. The characters that are retrieved 
are those characters at positions from \code{start.pos} up to, but not 
including \code{end.pos}. If \code{end.pos} is negative, then the the characters 
retrieved are those characters from \code{start.pos} to the end of the text.}
\usage{gtkEditableGetChars(object, start.pos, end.pos)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEditable}}}
\item{\verb{start.pos}}{start of text}
\item{\verb{end.pos}}{end of text}
}
\details{Note that positions are specified in characters, not bytes.}
\value{[character] a pointer to the contents of the widget as a
string.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
