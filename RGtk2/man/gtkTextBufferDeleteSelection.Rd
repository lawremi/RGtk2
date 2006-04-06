\alias{gtkTextBufferDeleteSelection}
\name{gtkTextBufferDeleteSelection}
\title{gtkTextBufferDeleteSelection}
\description{Deletes the range between the "insert" and "selection\_bound" marks,
that is, the currently-selected text. If \code{interactive} is \code{TRUE},
the editability of the selection will be considered (users can't delete
uneditable text).}
\usage{gtkTextBufferDeleteSelection(object, interactive, default.editable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}} }
\item{\code{interactive}}{[logical]  whether the deletion is caused by user interaction}
\item{\code{default.editable}}{[logical]  whether the buffer is editable by default}
}
\value{[logical]  whether there was a non-empty selection to delete}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
