\alias{gtkWidgetGrabDefault}
\name{gtkWidgetGrabDefault}
\title{gtkWidgetGrabDefault}
\description{Causes \code{widget} to become the default widget. \code{widget} must have the
\code{GTK_CAN_DEFAULT} flag set; typically you have to set this flag
yourself by calling \code{gtk_widget_set_can_default (  widget  ,
  TRUE  )}. The default widget is activated when 
the user presses Enter in a window. Default widgets must be 
activatable, that is, \code{\link{gtkWidgetActivate}} should affect them.}
\usage{gtkWidgetGrabDefault(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
