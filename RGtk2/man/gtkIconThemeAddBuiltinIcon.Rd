\alias{gtkIconThemeAddBuiltinIcon}
\name{gtkIconThemeAddBuiltinIcon}
\title{gtkIconThemeAddBuiltinIcon}
\description{Registers a built-in icon for icon theme lookups. The idea
of built-in icons is to allow an application or library
that uses themed icons to function requiring files to
be present in the file system. For instance, the default
images for all of GTK+'s stock icons are registered
as built-icons.}
\usage{gtkIconThemeAddBuiltinIcon(icon.name, size, pixbuf)}
\arguments{
\item{\verb{icon.name}}{the name of the icon to register}
\item{\verb{size}}{the size at which to register the icon (different
images can be registered for the same icon name
at different sizes.)}
\item{\verb{pixbuf}}{\code{\link{GdkPixbuf}} that contains the image to use
for \code{icon.name}.}
}
\details{In general, if you use \code{\link{gtkIconThemeAddBuiltinIcon}}
you should also install the icon in the icon theme, so
that the icon is generally available.
  
This function will generally be used with pixbufs loaded
via \code{gdkPixbufNewFromInline()}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
