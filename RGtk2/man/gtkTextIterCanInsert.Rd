\alias{gtkTextIterCanInsert}
\name{gtkTextIterCanInsert}
\title{gtkTextIterCanInsert}
\description{Considering the default editability of the buffer, and tags that
affect editability, determines whether text inserted at \code{iter} would
be editable. If text inserted at \code{iter} would be editable then the
user should be allowed to insert text at \code{iter}.
\code{\link{gtkTextBufferInsertInteractive}} uses this function to decide
whether insertions are allowed at a given position.}
\usage{gtkTextIterCanInsert(object, default.editability)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{default.editability}}{\code{TRUE} if text is editable by default}
}
\value{[logical] whether text inserted at \code{iter} would be editable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
