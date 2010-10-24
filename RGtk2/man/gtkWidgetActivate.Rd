\alias{gtkWidgetActivate}
\name{gtkWidgetActivate}
\title{gtkWidgetActivate}
\description{For widgets that can be "activated" (buttons, menu items, etc.)
this function activates them. Activation is what happens when you
press Enter on a widget during key navigation. If \code{widget} isn't 
activatable, the function returns \code{FALSE}.}
\usage{gtkWidgetActivate(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}} that's activatable}}
\value{[logical] \code{TRUE} if the widget was activatable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
