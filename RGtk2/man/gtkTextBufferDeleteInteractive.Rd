\alias{gtkTextBufferDeleteInteractive}
\name{gtkTextBufferDeleteInteractive}
\title{gtkTextBufferDeleteInteractive}
\description{Deletes all \emph{editable} text in the given range.
Calls \code{\link{gtkTextBufferDelete}} for each editable sub-range of
[\code{start},\code{end}). \code{start} and \code{end} are revalidated to point to
the location of the last deleted range, or left untouched if
no text was deleted.}
\usage{gtkTextBufferDeleteInteractive(object, start.iter, end.iter, 
    default.editable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{start.iter}}{start of range to delete}
\item{\verb{end.iter}}{end of range}
\item{\verb{default.editable}}{whether the buffer is editable by default}
}
\value{[logical] whether some text was actually deleted}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
