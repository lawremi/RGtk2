\alias{gtkIconInfoGetBaseSize}
\name{gtkIconInfoGetBaseSize}
\title{gtkIconInfoGetBaseSize}
\description{Gets the base size for the icon. The base size
is a size for the icon that was specified by
the icon theme creator. This may be different
than the actual size of image; an example of
this is small emblem icons that can be attached
to a larger icon. These icons will be given
the same base size as the larger icons to which
they are attached.}
\usage{gtkIconInfoGetBaseSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconInfo}}}}
\details{Since 2.4}
\value{[integer] the base size, or 0, if no base
size is known for the icon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
