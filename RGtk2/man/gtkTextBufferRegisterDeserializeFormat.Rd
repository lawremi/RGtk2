\alias{gtkTextBufferRegisterDeserializeFormat}
\name{gtkTextBufferRegisterDeserializeFormat}
\title{gtkTextBufferRegisterDeserializeFormat}
\description{This function registers a rich text deserialization \code{function} along with
its \code{mime.type} with the passed \code{buffer}.}
\usage{gtkTextBufferRegisterDeserializeFormat(object, mime.type, fun, 
    user.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{mime.type}}{the format's mime-type}
\item{\verb{user.data}}{\code{function}'s user_data}
}
\details{Since 2.10}
\value{[\code{\link{GdkAtom}}] the \code{\link{GdkAtom}} that corresponds to the newly registered
format's mime-type.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
