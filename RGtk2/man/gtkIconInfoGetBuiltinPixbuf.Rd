\alias{gtkIconInfoGetBuiltinPixbuf}
\name{gtkIconInfoGetBuiltinPixbuf}
\title{gtkIconInfoGetBuiltinPixbuf}
\description{Gets the built-in image for this icon, if any. To allow
GTK+ to use built in icon images, you must pass the
\code{GTK_ICON_LOOKUP_USE_BUILTIN} to
\code{\link{gtkIconThemeLookupIcon}}.}
\usage{gtkIconInfoGetBuiltinPixbuf(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconInfo}} structure}}
\details{Since 2.4}
\value{[\code{\link{GdkPixbuf}}] the built-in image pixbuf, or \code{NULL}. No
extra reference is added to the returned pixbuf, so if
you want to keep it around,
The returned image must not be modified. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
