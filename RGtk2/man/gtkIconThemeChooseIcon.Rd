\alias{gtkIconThemeChooseIcon}
\name{gtkIconThemeChooseIcon}
\title{gtkIconThemeChooseIcon}
\description{Looks up a named icon and returns a structure containing
information such as the filename of the icon. The icon
can then be rendered into a pixbuf using
\code{\link{gtkIconInfoLoadIcon}}. (\code{\link{gtkIconThemeLoadIcon}}
combines these two steps if all you need is the pixbuf.)}
\usage{gtkIconThemeChooseIcon(object, icon.names, size, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{icon.names}}{array of icon names to lookup}
\item{\verb{size}}{desired icon size}
\item{\verb{flags}}{flags modifying the behavior of the icon lookup}
}
\details{If \code{icon.names} contains more than one name, this function 
tries them all in the given order before falling back to 
inherited icon themes.
  Since 2.12}
\value{[\code{\link{GtkIconInfo}}] a \code{\link{GtkIconInfo}} structure containing information
about the icon, or \code{NULL} if the icon wasn't found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
