\alias{gtkIconInfoGetFilename}
\name{gtkIconInfoGetFilename}
\title{gtkIconInfoGetFilename}
\description{Gets the filename for the icon. If the
\code{GTK_ICON_LOOKUP_USE_BUILTIN} flag was passed
to \code{\link{gtkIconThemeLookupIcon}}, there may be
no filename if a builtin icon is returned; in this
case, you should use \code{\link{gtkIconInfoGetBuiltinPixbuf}}.}
\usage{gtkIconInfoGetFilename(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconInfo}}}}
\details{Since 2.4}
\value{[character]  the filename for the icon, or \code{NULL}
 if \code{\link{gtkIconInfoGetBuiltinPixbuf}} should
 be used instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
