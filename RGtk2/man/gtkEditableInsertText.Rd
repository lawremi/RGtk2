\alias{gtkEditableInsertText}
\name{gtkEditableInsertText}
\title{gtkEditableInsertText}
\description{Inserts text at a given position.}
\usage{gtkEditableInsertText(object, new.text, position = 0)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkEditable}}] a \verb{\link{GtkEditable}} widget.}
\item{\verb{new.text}}{[character] the text to insert.}
\item{\verb{position}}{[integer] an inout parameter. The caller initializes it to
           the position at which to insert the text. After the
           call it points at the position after the newly
           inserted text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
