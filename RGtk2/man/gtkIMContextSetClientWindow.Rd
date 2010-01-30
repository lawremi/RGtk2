\alias{gtkIMContextSetClientWindow}
\name{gtkIMContextSetClientWindow}
\title{gtkIMContextSetClientWindow}
\description{Set the client window for the input context; this is the
\verb{\link{GdkWindow}} in which the input appears. This window is
used in order to correctly position status windows, and may
also be used for purposes internal to the input method.}
\usage{gtkIMContextSetClientWindow(object, window)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIMContext}}]  a \verb{\link{GtkIMContext}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]   the client window. This may be \code{NULL} to indicate
          that the previous client window no longer exists.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
