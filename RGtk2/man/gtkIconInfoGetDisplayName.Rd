\alias{gtkIconInfoGetDisplayName}
\name{gtkIconInfoGetDisplayName}
\title{gtkIconInfoGetDisplayName}
\description{Gets the display name for an icon. A display name is a
string to be used in place of the icon name in a user
visible context like a list of icons.}
\usage{gtkIconInfoGetDisplayName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconInfo}}}}
\details{Since 2.4}
\value{[character] the display name for the icon or \code{NULL}, if
the icon doesn't have a specified display name. This value
is owned \code{icon.info} and must not be modified or free.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
