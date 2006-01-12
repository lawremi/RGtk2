\alias{gtkEditableInsertText}
\name{gtkEditableInsertText}
\title{gtkEditableInsertText}
\description{Inserts text at a given position.}
\usage{gtkEditableInsertText(object, new.text, position = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEditable}}] a \code{\link{GtkEditable}} widget.}
\item{\code{new.text}}{[character] the text to insert.}
\item{\code{position}}{[integer] an inout parameter. The caller initializes it to
           the position at which to insert the text. After the
           call it points at the position after the newly
           inserted text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
