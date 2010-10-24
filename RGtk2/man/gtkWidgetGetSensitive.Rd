\alias{gtkWidgetGetSensitive}
\name{gtkWidgetGetSensitive}
\title{gtkWidgetGetSensitive}
\description{Returns the widget's sensitivity (in the sense of returning
the value that has been set using \code{\link{gtkWidgetSetSensitive}}).}
\usage{gtkWidgetGetSensitive(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{The effective sensitivity of a widget is however determined by both its
own and its parent widget's sensitivity. See \code{\link{gtkWidgetIsSensitive}}.
  Since 2.18}
\value{[logical] \code{TRUE} if the widget is sensitive}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
