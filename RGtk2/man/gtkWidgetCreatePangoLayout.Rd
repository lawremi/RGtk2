\alias{gtkWidgetCreatePangoLayout}
\name{gtkWidgetCreatePangoLayout}
\title{gtkWidgetCreatePangoLayout}
\description{Creates a new \code{\link{PangoLayout}} with the appropriate font map,
font description, and base direction for drawing text for
this widget.}
\usage{gtkWidgetCreatePangoLayout(object, text)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{text}}{[character]  text to set on the layout (can be \code{NULL})}
}
\details{If you keep a \code{\link{PangoLayout}} created in this way around, in order to
notify the layout of changes to the base direction or font of this
widget, you must call \code{\link{pangoLayoutContextChanged}} in response to
the \code{"style-set"} and \code{"direction-changed"} signals 
for the widget.  }
\value{[\code{\link{PangoLayout}}]  the new \code{\link{PangoLayout}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
