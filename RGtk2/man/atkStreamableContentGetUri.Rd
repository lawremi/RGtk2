\alias{atkStreamableContentGetUri}
\name{atkStreamableContentGetUri}
\title{atkStreamableContentGetUri}
\description{Get a string representing a URI in IETF standard format
(see http://www.ietf.org/rfc/rfc2396.txt) from which the object's content
may be streamed in the specified mime-type, if one is available.
If mime\_type is NULL, the URI for the default (and possibly only) mime-type is
returned. }
\usage{atkStreamableContentGetUri(object, mime.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkStreamableContent}}]  a GObject instance that implements AtkStreamableContentIface}
\item{\code{mime.type}}{[character]  a gchar* representing the mime type, or NULL to request a URI 
for the default mime type.}
}
\details{Note that it is possible for get\_uri to return NULL but for
get\_stream to work nonetheless, since not all GIOChannels connect to URIs.  

  Since  ATK 1.12}
\value{[character]   Returns a string representing a URI, or NULL if no corresponding URI
can be constructed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
