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
\item{\code{object}}{[\code{\link{GtkIconTheme}}]  a \code{\link{GtkIconTheme}}}
\item{\code{icon.name}}{[character]  the name of the icon to lookup}
\item{\code{size}}{[integer]  desired icon size}
\item{\code{flags}}{[\code{\link{GtkIconLookupFlags}}]  flags modifying the behavior of the icon lookup}
}
\details{  Since  2.4}
\value{[\code{\link{GtkIconInfo}}]  a \code{\link{GtkIconInfo}} structure containing information
about the icon, or \code{NULL} if the icon wasn't found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
