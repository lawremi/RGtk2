\alias{gtkSocketAddId}
\name{gtkSocketAddId}
\title{gtkSocketAddId}
\description{Adds an XEMBED client, such as a \verb{\link{GtkPlug}}, to the \verb{\link{GtkSocket}}.  The
client may be in the same process or in a different process. }
\usage{gtkSocketAddId(object, window.id)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSocket}}]  a \verb{\link{GtkSocket}}}
\item{\verb{window.id}}{[\verb{\link{GdkNativeWindow}}]  the window ID of a client participating in the XEMBED protocol.}
}
\details{To embed a \verb{\link{GtkPlug}} in a \verb{\link{GtkSocket}}, you can either create the
\verb{\link{GtkPlug}} with \code{gtk_plug_new (0)}, call 
\code{\link{gtkPlugGetId}} to get the window ID of the plug, and then pass that to the
\code{\link{gtkSocketAddId}}, or you can call \code{\link{gtkSocketGetId}} to get the
window ID for the socket, and call \code{\link{gtkPlugNew}} passing in that
ID.
  
The \verb{\link{GtkSocket}} must have already be added into a toplevel window
 before you can make this call.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
