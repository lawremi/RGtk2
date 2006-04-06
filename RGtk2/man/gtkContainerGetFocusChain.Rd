\alias{gtkContainerGetFocusChain}
\name{gtkContainerGetFocusChain}
\title{gtkContainerGetFocusChain}
\description{Retrieves the focus chain of the container, if one has been
set explicitly. If no focus chain has been explicitly
set, GTK+ computes the focus chain based on the positions
of the children. In that case, GTK+ stores \code{NULL} in
\code{focusable.widgets} and returns \code{FALSE}.}
\usage{gtkContainerGetFocusChain(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkContainer}}]          a \code{\link{GtkContainer}}}}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the focus chain of the container 
has been set explicitly.}
\item{\code{focusable.widgets}}{[list]  location to store the focus chain of the
                    container, or \code{NULL}. You should free this list
                    using \code{g\List\Free()} when you are done with it, however
                    no additional reference count is added to the
                    individual widgets in the focus chain.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
