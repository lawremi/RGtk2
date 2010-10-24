\alias{gtkWidgetSetEvents}
\name{gtkWidgetSetEvents}
\title{gtkWidgetSetEvents}
\description{Sets the event mask (see \code{\link{GdkEventMask}}) for a widget. The event
mask determines which events a widget will receive. Keep in mind
that different widgets have different default event masks, and by
changing the event mask you may disrupt a widget's functionality,
so be careful. This function must be called while a widget is
unrealized. Consider \code{\link{gtkWidgetAddEvents}} for widgets that are
already realized, or if you want to preserve the existing event
mask. This function can't be used with \verb{GTK_NO_WINDOW} widgets;
to get events on those widgets, place them inside a \code{\link{GtkEventBox}}
and receive events on the event box.}
\usage{gtkWidgetSetEvents(object, events)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{events}}{event mask}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
