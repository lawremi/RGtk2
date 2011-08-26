\alias{gtkTextBufferDeleteSelection}
\name{gtkTextBufferDeleteSelection}
\title{gtkTextBufferDeleteSelection}
\description{Deletes the range between the "insert" and "selection_bound" marks,
that is, the currently-selected text. If \code{interactive} is \code{TRUE},
the editability of the selection will be considered (users can't delete
uneditable text).}
\usage{gtkTextBufferDeleteSelection(object, interactive, default.editable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{interactive}}{whether the deletion is caused by user interaction}
\item{\verb{default.editable}}{whether the buffer is editable by default}
}
\value{[logical] whether there was a non-empty selection to delete}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
