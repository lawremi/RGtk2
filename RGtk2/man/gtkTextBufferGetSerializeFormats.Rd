\alias{gtkTextBufferGetSerializeFormats}
\name{gtkTextBufferGetSerializeFormats}
\title{gtkTextBufferGetSerializeFormats}
\description{This function returns the rich text serialize formats registered
with \code{buffer} using \code{\link{gtkTextBufferRegisterSerializeFormat}} or
\code{\link{gtkTextBufferRegisterSerializeTagset}}}
\usage{gtkTextBufferGetSerializeFormats(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkAtom}}] a list of \code{\link{GdkAtom}}s representing the registered
formats.}
\item{\verb{n.formats}}{return location for the number of formats}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
