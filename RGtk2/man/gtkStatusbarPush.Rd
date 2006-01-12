\alias{gtkStatusbarPush}
\name{gtkStatusbarPush}
\title{gtkStatusbarPush}
\description{Pushes a new message onto a statusbar's stack.}
\usage{gtkStatusbarPush(object, context.id, text)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStatusbar}}] a \code{\link{GtkStatusbar}}.}
\item{\code{context.id}}{[numeric] the message's context id, as returned by
\code{\link{gtkStatusbarGetContextId}}.}
\item{\code{text}}{[character] the message to add to the statusbar.}
}
\value{[numeric] the message's new message id for use with \code{\link{gtkStatusbarRemove}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
