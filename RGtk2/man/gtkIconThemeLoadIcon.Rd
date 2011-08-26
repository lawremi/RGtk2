\alias{gtkIconThemeLoadIcon}
\name{gtkIconThemeLoadIcon}
\title{gtkIconThemeLoadIcon}
\description{Looks up an icon in an icon theme, scales it to the given size
and renders it into a pixbuf. This is a convenience function;
if more details about the icon are needed, use
\code{\link{gtkIconThemeLookupIcon}} followed by \code{\link{gtkIconInfoLoadIcon}}.}
\usage{gtkIconThemeLoadIcon(object, icon.name, size, flags, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{icon.name}}{the name of the icon to lookup}
\item{\verb{size}}{the desired icon size. The resulting icon may not be
exactly this size; see \code{\link{gtkIconInfoLoadIcon}}.}
\item{\verb{flags}}{flags modifying the behavior of the icon lookup}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Note that you probably want to listen for icon theme changes and
update the icon. This is usually done by connecting to the 
GtkWidget::style-set signal. If for some reason you do not want to
update the icon when the icon theme changes, you should consider
using \code{\link{gdkPixbufCopy}} to make a private copy of the pixbuf
returned by this function. Otherwise GTK+ may need to keep the old 
icon theme loaded, which would be a waste of memory.
  Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] the rendered icon; this may be a newly created icon
or a new reference to an internal icon, so you must not modify
the icon. \code{NULL} if the icon isn't found.}
\item{\verb{error}}{Location to store error information on failure, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
