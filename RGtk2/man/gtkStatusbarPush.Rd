\alias{gtkStatusbarPush}
\name{gtkStatusbarPush}
\title{gtkStatusbarPush}
\description{Pushes a new message onto a statusbar's stack.}
\usage{gtkStatusbarPush(object, context.id, text)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStatusbar}}}
\item{\verb{context.id}}{the message's context id, as returned by
\code{\link{gtkStatusbarGetContextId}}}
\item{\verb{text}}{the message to add to the statusbar}
}
\value{[numeric] a message id that can be used with
\code{\link{gtkStatusbarRemove}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
