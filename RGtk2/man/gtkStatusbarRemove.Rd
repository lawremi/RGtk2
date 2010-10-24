\alias{gtkStatusbarRemove}
\name{gtkStatusbarRemove}
\title{gtkStatusbarRemove}
\description{Forces the removal of a message from a statusbar's stack. 
The exact \code{context.id} and \code{message.id} must be specified.}
\usage{gtkStatusbarRemove(object, context.id, message.id)}
\arguments{
\item{\verb{object}}{a \verb{GtkStatusBar}}
\item{\verb{context.id}}{a context identifier}
\item{\verb{message.id}}{a message identifier, as returned by \code{\link{gtkStatusbarPush}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
