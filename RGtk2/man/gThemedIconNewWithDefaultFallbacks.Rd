\alias{gThemedIconNewWithDefaultFallbacks}
\name{gThemedIconNewWithDefaultFallbacks}
\title{gThemedIconNewWithDefaultFallbacks}
\description{Creates a new themed icon for \code{iconname}, and all the names
that can be created by shortening \code{iconname} at '-' characters.}
\usage{gThemedIconNewWithDefaultFallbacks(iconname)}
\arguments{\item{\verb{iconname}}{a string containing an icon name}}
\details{In the following example, \code{icon1} and \code{icon2} are equivalent:
\preformatted{
names <- c("gnome-dev-cdrom-audio", "gnome-dev-cdrom", "gnome-dev", "gnome")

icon1 <- gThemedIconNewFromNames(names)
icon2 <- gThemedIconNewWithDefaultCallbacks("gnome-dev-cdrom-audio")
}}
\value{[\code{\link{GIcon}}] a new \code{\link{GThemedIcon}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
