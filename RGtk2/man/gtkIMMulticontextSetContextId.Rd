\alias{gtkIMMulticontextSetContextId}
\name{gtkIMMulticontextSetContextId}
\title{gtkIMMulticontextSetContextId}
\description{Sets the context id for \code{context}.}
\usage{gtkIMMulticontextSetContextId(object, context.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIMMulticontext}}}
\item{\verb{context.id}}{the id to use}
}
\details{This causes the currently active slave of \code{context} to be
replaced by the slave corresponding to the new context id.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
