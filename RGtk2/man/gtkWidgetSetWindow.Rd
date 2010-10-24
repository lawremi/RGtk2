\alias{gtkWidgetSetWindow}
\name{gtkWidgetSetWindow}
\title{gtkWidgetSetWindow}
\description{Sets a widget's window. This function should only be used in a
widget's GtkWidget::\code{realize()} implementation. The \code{window} passed is
usually either new window created with \code{\link{gdkWindowNew}}, or the
window of its parent widget as returned by
\code{\link{gtkWidgetGetParentWindow}}.}
\usage{gtkWidgetSetWindow(object, window)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
}
\details{Widgets must indicate whether they will create their own \code{\link{GdkWindow}}
by calling \code{\link{gtkWidgetSetHasWindow}}. This is usually done in the
widget's \code{init()} function.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
