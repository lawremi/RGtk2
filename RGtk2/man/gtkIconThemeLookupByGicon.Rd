\alias{gtkIconThemeLookupByGicon}
\name{gtkIconThemeLookupByGicon}
\title{gtkIconThemeLookupByGicon}
\description{Looks up an icon and returns a structure containing
information such as the filename of the icon. 
The icon can then be rendered into a pixbuf using
\code{\link{gtkIconInfoLoadIcon}}.}
\usage{gtkIconThemeLookupByGicon(object, icon, size, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{icon}}{the \code{\link{GIcon}} to look up}
\item{\verb{size}}{desired icon size}
\item{\verb{flags}}{flags modifying the behavior of the icon lookup}
}
\details{Since 2.14}
\value{[\code{\link{GtkIconInfo}}] a \code{\link{GtkIconInfo}} structure containing
information about the icon, or \code{NULL} if the icon
wasn't found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
