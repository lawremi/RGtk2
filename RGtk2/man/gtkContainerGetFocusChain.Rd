\alias{gtkContainerGetFocusChain}
\name{gtkContainerGetFocusChain}
\title{gtkContainerGetFocusChain}
\description{Retrieves the focus chain of the container, if one has been
set explicitly. If no focus chain has been explicitly
set, GTK+ computes the focus chain based on the positions
of the children. In that case, GTK+ stores \code{NULL} in
\code{focusable.widgets} and returns \code{FALSE}.}
\usage{gtkContainerGetFocusChain(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkContainer}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the focus chain of the container
has been set explicitly.}
\item{\verb{focusable.widgets}}{location
to store the focus chain of the
container, or \code{NULL}. You should free this list
using \code{gListFree()} when you are done with it, however
no additional reference count is added to the
individual widgets in the focus chain. \emph{[  \acronym{element-type}   GtkWidget][  \acronym{out}  ][  \acronym{transfer container}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
