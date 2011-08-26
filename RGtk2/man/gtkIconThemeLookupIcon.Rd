\alias{gtkIconThemeLookupIcon}
\name{gtkIconThemeLookupIcon}
\title{gtkIconThemeLookupIcon}
\description{Looks up a named icon and returns a structure containing
information such as the filename of the icon. The icon
can then be rendered into a pixbuf using
\code{\link{gtkIconInfoLoadIcon}}. (\code{\link{gtkIconThemeLoadIcon}}
combines these two steps if all you need is the pixbuf.)}
\usage{gtkIconThemeLookupIcon(object, icon.name, size, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{icon.name}}{the name of the icon to lookup}
\item{\verb{size}}{desired icon size}
\item{\verb{flags}}{flags modifying the behavior of the icon lookup}
}
\details{Since 2.4}
\value{[\code{\link{GtkIconInfo}}] a \code{\link{GtkIconInfo}} structure containing information
about the icon, or \code{NULL} if the icon wasn't found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
