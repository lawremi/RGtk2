\alias{atkStreamableContentGetStream}
\name{atkStreamableContentGetStream}
\title{atkStreamableContentGetStream}
\description{Gets the content in the specified mime type.}
\usage{atkStreamableContentGetStream(object, mime.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkStreamableContent}}]  a GObject instance that implements AtkStreamableContentIface}
\item{\verb{mime.type}}{[character]  a gchar* representing the mime type}
}
\value{[GIOChannel]  A \verb{GIOChannel} which contains the content in the specified mime
type.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
