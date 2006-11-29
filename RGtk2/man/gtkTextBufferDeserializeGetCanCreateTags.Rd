\alias{gtkTextBufferDeserializeGetCanCreateTags}
\name{gtkTextBufferDeserializeGetCanCreateTags}
\title{gtkTextBufferDeserializeGetCanCreateTags}
\description{This functions returns the value set with
\code{\link{gtkTextBufferDeserializeSetCanCreateTags}}}
\usage{gtkTextBufferDeserializeGetCanCreateTags(object, format)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{format}}{[\code{\link{GdkAtom}}]  a \code{\link{GdkAtom}} representing a registered rich text format}
}
\details{  Since  2.10}
\value{[logical]  whether deserializing this format may create tags}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
