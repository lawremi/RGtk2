\alias{gtkTextBufferDeserializeGetCanCreateTags}
\name{gtkTextBufferDeserializeGetCanCreateTags}
\title{gtkTextBufferDeserializeGetCanCreateTags}
\description{This functions returns the value set with
\code{\link{gtkTextBufferDeserializeSetCanCreateTags}}}
\usage{gtkTextBufferDeserializeGetCanCreateTags(object, format)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{format}}{a \code{\link{GdkAtom}} representing a registered rich text format}
}
\details{Since 2.10}
\value{[logical] whether deserializing this format may create tags}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
