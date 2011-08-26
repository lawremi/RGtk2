\alias{gtkTextBufferGetModified}
\name{gtkTextBufferGetModified}
\title{gtkTextBufferGetModified}
\description{Indicates whether the buffer has been modified since the last call
to \code{\link{gtkTextBufferSetModified}} set the modification flag to
\code{FALSE}. Used for example to enable a "save" function in a text
editor.}
\usage{gtkTextBufferGetModified(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\value{[logical] \code{TRUE} if the buffer has been modified}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
