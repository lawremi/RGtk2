\alias{pangoAttrTypeGetName}
\name{pangoAttrTypeGetName}
\title{pangoAttrTypeGetName}
\description{Fetches the attribute type name passed in when registering the type using
\code{\link{pangoAttrTypeRegister}}.}
\usage{pangoAttrTypeGetName(type)}
\arguments{\item{\verb{type}}{[\code{\link{PangoAttrType}}]  an attribute type ID to fetch the name for}}
\details{The returned value is an interned string (see \code{gInternString()} for what
that means) that should not be modified or freed.  
  Since 1.22}
\value{[char]  the type ID name (which may be \code{NULL}), or \code{NULL} if \code{type} is
a built-in Pango attribute type or invalid. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
