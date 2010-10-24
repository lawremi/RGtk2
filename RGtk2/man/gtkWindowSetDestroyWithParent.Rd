\alias{gtkWindowSetDestroyWithParent}
\name{gtkWindowSetDestroyWithParent}
\title{gtkWindowSetDestroyWithParent}
\description{If \code{setting} is \code{TRUE}, then destroying the transient parent of \code{window}
will also destroy \code{window} itself. This is useful for dialogs that
shouldn't persist beyond the lifetime of the main window they're
associated with, for example.}
\usage{gtkWindowSetDestroyWithParent(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{whether to destroy \code{window} with its transient parent}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
