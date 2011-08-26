\alias{gtkContainerSetFocusChild}
\name{gtkContainerSetFocusChild}
\title{gtkContainerSetFocusChild}
\description{Sets, or unsets if \code{child} is \code{NULL}, the focused child of \code{container}.}
\usage{gtkContainerSetFocusChild(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{child}}{a \code{\link{GtkWidget}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function emits the GtkContainer::set_focus_child signal of
\code{container}. Implementations of \code{\link{GtkContainer}} can override the
default behaviour by overriding the class closure of this signal.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
