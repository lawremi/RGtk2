\alias{gtkWindowSetModal}
\name{gtkWindowSetModal}
\title{gtkWindowSetModal}
\description{Sets a window modal or non-modal. Modal windows prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
\code{\link{gtkWindowSetTransientFor}} to make the dialog transient for the
parent; most window managers
will then disallow lowering the dialog below the parent.}
\usage{gtkWindowSetModal(object, modal)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{modal}}{whether the window is modal}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
