\alias{gtkWindowActivateKey}
\name{gtkWindowActivateKey}
\title{gtkWindowActivateKey}
\description{Activates mnemonics and accelerators for this \code{\link{GtkWindow}}. This is normally
called by the default ::key\_press\_event handler for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.}
\usage{gtkWindowActivateKey(object, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]   a \code{\link{GtkWindow}}}
\item{\code{event}}{[\code{\link{GdkEventKey}}]    a \code{\link{GdkEventKey}}}
}
\value{[logical] \code{TRUE} if a mnemonic or accelerator was found and activated.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
