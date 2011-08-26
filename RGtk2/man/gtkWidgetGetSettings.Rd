\alias{gtkWidgetGetSettings}
\name{gtkWidgetGetSettings}
\title{gtkWidgetGetSettings}
\description{Gets the settings object holding the settings (global property
settings, RC file information, etc) used for this widget.}
\usage{gtkWidgetGetSettings(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Note that this function can only be called when the \code{\link{GtkWidget}}
is attached to a toplevel, since the settings object is specific
to a particular \code{\link{GdkScreen}}.}
\value{[\code{\link{GtkSettings}}] the relevant \code{\link{GtkSettings}} object. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
