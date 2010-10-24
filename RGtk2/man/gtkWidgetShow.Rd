\alias{gtkWidgetShow}
\name{gtkWidgetShow}
\title{gtkWidgetShow}
\description{Flags a widget to be displayed. Any widget that isn't shown will
not appear on the screen. If you want to show all the widgets in a
container, it's easier to call \code{\link{gtkWidgetShowAll}} on the
container, instead of individually showing the widgets.}
\usage{gtkWidgetShow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Remember that you have to show the containers containing a widget,
in addition to the widget itself, before it will appear onscreen.
  
When a toplevel container is shown, it is immediately realized and
mapped; other shown widgets are realized and mapped when their
toplevel container is realized and mapped.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
