\alias{gtkTextBufferDeserializeGetCanCreateTags}
\name{gtkTextBufferDeserializeGetCanCreateTags}
\title{gtkTextBufferDeserializeGetCanCreateTags}
\description{This functions returns the value set with
\code{\link{gtkTextBufferDeserializeSetCanCreateTags}}}
\usage{gtkTextBufferDeserializeGetCanCreateTags(object, format)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{format}}{[\verb{\link{GdkAtom}}]  a \verb{\link{GdkAtom}} representing a registered rich text format}
}
\details{  Since  2.10}
\value{[logical]  whether deserializing this format may create tags}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
