\alias{gtkWidgetErrorBell}
\name{gtkWidgetErrorBell}
\title{gtkWidgetErrorBell}
\description{Notifies the user about an input-related error on this widget. 
If the \verb{"gtk-error-bell"} setting is \code{TRUE}, it calls
\code{\link{gdkWindowBeep}}, otherwise it does nothing.}
\usage{gtkWidgetErrorBell(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Note that the effect of \code{\link{gdkWindowBeep}} can be configured in many
ways, depending on the windowing backend and the desktop environment
or window manager that is used.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
