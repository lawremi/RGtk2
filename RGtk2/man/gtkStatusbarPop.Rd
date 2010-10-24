\alias{gtkStatusbarPop}
\name{gtkStatusbarPop}
\title{gtkStatusbarPop}
\description{Removes the first message in the \verb{GtkStatusBar}'s stack
with the given context id. }
\usage{gtkStatusbarPop(object, context.id)}
\arguments{
\item{\verb{object}}{a \verb{GtkStatusBar}}
\item{\verb{context.id}}{a context identifier}
}
\details{Note that this may not change the displayed message, if 
the message at the top of the stack has a different 
context id.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
