\alias{gtkTextBufferGetDeserializeFormats}
\name{gtkTextBufferGetDeserializeFormats}
\title{gtkTextBufferGetDeserializeFormats}
\description{This function returns the rich text deserialize formats registered
with \code{buffer} using \code{\link{gtkTextBufferRegisterDeserializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeTagset}}}
\usage{gtkTextBufferGetDeserializeFormats(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkAtom}}]  a list of \verb{\link{GdkAtom}}s representing the registered
              formats.}
\item{\verb{n.formats}}{[integer]  return location for the number of formats}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
