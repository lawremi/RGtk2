\alias{gtkTextBufferUnregisterDeserializeFormat}
\name{gtkTextBufferUnregisterDeserializeFormat}
\title{gtkTextBufferUnregisterDeserializeFormat}
\description{This function unregisters a rich text format that was previously
registered using \code{\link{gtkTextBufferRegisterDeserializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeTagset}}.}
\usage{gtkTextBufferUnregisterDeserializeFormat(object, format)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{format}}{a \code{\link{GdkAtom}} representing a registered rich text format.}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
