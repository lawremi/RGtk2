\alias{gtkIconFactoryNew}
\name{gtkIconFactoryNew}
\title{gtkIconFactoryNew}
\description{Creates a new \code{\link{GtkIconFactory}}. An icon factory manages a collection
of \code{\link{GtkIconSet}}s; a \code{\link{GtkIconSet}} manages a set of variants of a
particular icon (i.e. a \code{\link{GtkIconSet}} contains variants for different
sizes and widget states). Icons in an icon factory are named by a
stock ID, which is a simple string identifying the icon. Each
\code{\link{GtkStyle}} has a list of \code{\link{GtkIconFactory}}s derived from the current
theme; those icon factories are consulted first when searching for
an icon. If the theme doesn't set a particular icon, GTK+ looks for
the icon in a list of default icon factories, maintained by
\code{\link{gtkIconFactoryAddDefault}} and
\code{\link{gtkIconFactoryRemoveDefault}}. Applications with icons should
add a default icon factory with their icons, which will allow
themes to override the icons for the application.}
\usage{gtkIconFactoryNew()}
\value{[\code{\link{GtkIconFactory}}] a new \code{\link{GtkIconFactory}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
