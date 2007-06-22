\alias{gtkIconInfoLoadIcon}
\name{gtkIconInfoLoadIcon}
\title{gtkIconInfoLoadIcon}
\description{Renders an icon previously looked up in an icon theme using
\code{\link{gtkIconThemeLookupIcon}}; the size will be based on the size
passed to \code{\link{gtkIconThemeLookupIcon}}. Note that the resulting
pixbuf may not be exactly this size; an icon theme may have icons
that differ slightly from their nominal sizes, and in addition GTK+
will avoid scaling icons that it considers sufficiently close to the
requested size or for which the source image would have to be scaled
up too far. (This maintains sharpness.)}
\usage{gtkIconInfoLoadIcon(object, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconInfo}}]  a \code{\link{GtkIconInfo}} structure from \code{\link{gtkIconThemeLookupIcon}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}]  the rendered icon; this may be a newly created icon
 or a new reference to an internal icon, so you must not modify
 the icon.}
\item{\code{error}}{[\code{\link{GError}}]  location to store error information on failure, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
