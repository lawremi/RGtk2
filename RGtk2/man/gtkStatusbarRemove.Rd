\alias{gtkStatusbarRemove}
\name{gtkStatusbarRemove}
\title{gtkStatusbarRemove}
\description{Forces the removal of a message from a statusbar's stack. The exact \code{context.id} and \code{message.id} must be specified.}
\usage{gtkStatusbarRemove(object, context.id, message.id)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStatusbar}}] a \code{GtkStatusBar}.}
\item{\code{context.id}}{[numeric] a context identifier.}
\item{\code{message.id}}{[numeric] a message identifier, as returned by \code{\link{gtkStatusbarPush}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
