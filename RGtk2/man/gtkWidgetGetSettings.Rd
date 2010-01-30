\alias{gtkWidgetGetSettings}
\name{gtkWidgetGetSettings}
\title{gtkWidgetGetSettings}
\description{Gets the settings object holding the settings (global property
settings, RC file information, etc) used for this widget.}
\usage{gtkWidgetGetSettings(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{Note that this function can only be called when the \verb{\link{GtkWidget}}
is attached to a toplevel, since the settings object is specific
to a particular \verb{\link{GdkScreen}}.  }
\value{[\verb{\link{GtkSettings}}]  the relevant \verb{\link{GtkSettings}} object}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
