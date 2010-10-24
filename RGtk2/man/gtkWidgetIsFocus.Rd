\alias{gtkWidgetIsFocus}
\name{gtkWidgetIsFocus}
\title{gtkWidgetIsFocus}
\description{Determines if the widget is the focus widget within its
toplevel. (This does not mean that the \code{HAS_FOCUS} flag is
necessarily set; \code{HAS_FOCUS} will only be set if the
toplevel widget additionally has the global input focus.)}
\usage{gtkWidgetIsFocus(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\value{[logical] \code{TRUE} if the widget is the focus widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
