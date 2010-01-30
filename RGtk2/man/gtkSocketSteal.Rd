\alias{gtkSocketSteal}
\name{gtkSocketSteal}
\title{gtkSocketSteal}
\description{
Reparents a pre-existing toplevel window into a \verb{\link{GtkSocket}}. This is
meant to embed clients that do not know about embedding into a
\verb{\link{GtkSocket}}, however doing so is inherently unreliable, and using
this function is not recommended.
\strong{WARNING: \code{gtk_socket_steal} is deprecated and should not be used in newly-written code.}
}
\usage{gtkSocketSteal(object, wid)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSocket}}]  a \verb{\link{GtkSocket}}}
\item{\verb{wid}}{[\verb{\link{GdkNativeWindow}}]  the window ID of an existing toplevel window.}
}
\details{The \verb{\link{GtkSocket}} must have already be added into a toplevel window
 before you can make this call.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
