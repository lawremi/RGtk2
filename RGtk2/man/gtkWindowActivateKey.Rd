\alias{gtkWindowActivateKey}
\name{gtkWindowActivateKey}
\title{gtkWindowActivateKey}
\description{Activates mnemonics and accelerators for this \verb{\link{GtkWindow}}. This is normally
called by the default ::key_press_event handler for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.}
\usage{gtkWindowActivateKey(object, event)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWindow}}]   a \verb{\link{GtkWindow}}}
\item{\verb{event}}{[\verb{\link{GdkEventKey}}]    a \verb{\link{GdkEventKey}}}
}
\value{[logical] \code{TRUE} if a mnemonic or accelerator was found and activated.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
