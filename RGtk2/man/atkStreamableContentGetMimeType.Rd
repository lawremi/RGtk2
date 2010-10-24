\alias{atkStreamableContentGetMimeType}
\name{atkStreamableContentGetMimeType}
\title{atkStreamableContentGetMimeType}
\description{Gets the character string of the specified mime type. The first mime
type is at position 0, the second at position 1, and so on.}
\usage{atkStreamableContentGetMimeType(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkStreamableContent}}]  a GObject instance that implements AtkStreamableContent}
\item{\verb{i}}{[integer]  a gint representing the position of the mime type starting from 0}
}
\value{[character] : a gchar* representing the specified mime type; the caller
should not free the character string.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
