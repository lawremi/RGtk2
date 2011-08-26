\alias{gtkTextTagEvent}
\name{gtkTextTagEvent}
\title{gtkTextTagEvent}
\description{Emits the "event" signal on the \code{\link{GtkTextTag}}.}
\usage{gtkTextTagEvent(object, event.object, event, iter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextTag}}}
\item{\verb{event.object}}{object that received the event, such as a widget}
\item{\verb{event}}{the event}
\item{\verb{iter}}{location where the event was received}
}
\value{[logical] result of signal emission (whether the event was handled)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
