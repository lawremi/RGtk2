\alias{gtkWidgetSetVisible}
\name{gtkWidgetSetVisible}
\title{gtkWidgetSetVisible}
\description{Sets the visibility state of \code{widget}. Note that setting this to
\code{TRUE} doesn't mean the widget is actually viewable, see
\code{\link{gtkWidgetGetVisible}}.}
\usage{gtkWidgetSetVisible(object, visible)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{visible}}{whether the widget should be shown or not}
}
\details{This function simply calls \code{\link{gtkWidgetShow}} or \code{\link{gtkWidgetHide}}
but is nicer to use when the visibility of the widget depends on
some condition.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
