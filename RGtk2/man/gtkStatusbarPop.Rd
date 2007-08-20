\alias{gtkStatusbarPop}
\name{gtkStatusbarPop}
\title{gtkStatusbarPop}
\description{Removes the first message in the \code{GtkStatusBar}'s stack
with the given context id. }
\usage{gtkStatusbarPop(object, context.id)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStatusbar}}]  a \code{GtkStatusBar}}
\item{\code{context.id}}{[numeric]  a context identifier}
}
\details{Note that this may not change the displayed message, if 
the message at the top of the stack has a different 
context id.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
