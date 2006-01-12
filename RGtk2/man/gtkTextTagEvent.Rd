\alias{gtkTextTagEvent}
\name{gtkTextTagEvent}
\title{gtkTextTagEvent}
\description{Emits the "event" signal on the \code{\link{GtkTextTag}}.}
\usage{gtkTextTagEvent(object, event.object, event, iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextTag}}]  a \code{\link{GtkTextTag}}}
\item{\code{event.object}}{[\code{\link{GObject}}]  object that received the event, such as a widget}
\item{\code{event}}{[\code{\link{GdkEvent}}]  the event}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  location where the event was received}
}
\value{[logical]  result of signal emission (whether the event was handled)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
