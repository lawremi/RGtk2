\alias{gtkTextTagEvent}
\name{gtkTextTagEvent}
\title{gtkTextTagEvent}
\description{Emits the "event" signal on the \verb{\link{GtkTextTag}}.}
\usage{gtkTextTagEvent(object, event.object, event, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextTag}}]  a \verb{\link{GtkTextTag}}}
\item{\verb{event.object}}{[\verb{\link{GObject}}]  object that received the event, such as a widget}
\item{\verb{event}}{[\verb{\link{GdkEvent}}]  the event}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  location where the event was received}
}
\value{[logical]  result of signal emission (whether the event was handled)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
