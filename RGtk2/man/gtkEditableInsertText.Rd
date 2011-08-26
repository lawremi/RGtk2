\alias{gtkEditableInsertText}
\name{gtkEditableInsertText}
\title{gtkEditableInsertText}
\description{Inserts \code{new.text.length} bytes of \code{new.text} into the contents of the
widget, at position \code{position}.}
\usage{gtkEditableInsertText(object, new.text, position = 0)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEditable}}}
\item{\verb{new.text}}{the text to append}
\item{\verb{position}}{location of the position text will be inserted at. \emph{[  \acronym{in-out}  ]}}
}
\details{Note that the position is in characters, not in bytes. 
The function updates \code{position} to point after the newly inserted text.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
