\alias{gtkRcResetStyles}
\name{gtkRcResetStyles}
\title{gtkRcResetStyles}
\description{This function recomputes the styles for all widgets that use a
particular \code{\link{GtkSettings}} object. (There is one \code{\link{GtkSettings}} object
per \code{\link{GdkScreen}}, see \code{\link{gtkSettingsGetForScreen}}); It is useful
when some global parameter has changed that affects the appearance
of all widgets, because when a widget gets a new style, it will
both redraw and recompute any cached information about its
appearance. As an example, it is used when the default font size
set by the operating system changes. Note that this function
doesn't affect widgets that have a style set explicitely on them
with \code{\link{gtkWidgetSetStyle}}.}
\usage{gtkRcResetStyles(settings)}
\arguments{\item{\verb{settings}}{a \code{\link{GtkSettings}}}}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
