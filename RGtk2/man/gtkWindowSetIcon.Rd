\alias{gtkWindowSetIcon}
\name{gtkWindowSetIcon}
\title{gtkWindowSetIcon}
\description{Sets up the icon representing a \code{\link{GtkWindow}}. This icon is used when
the window is minimized (also known as iconified).  Some window
managers or desktop environments may also place it in the window
frame, or display it in other contexts.}
\usage{gtkWindowSetIcon(object, icon = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{icon}}{icon image, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{The icon should be provided in whatever size it was naturally
drawn; that is, don't scale the image before passing it to
GTK+. Scaling is postponed until the last minute, when the desired
final size is known, to allow best quality.
  
If you have your icon hand-drawn in multiple sizes, use
\code{\link{gtkWindowSetIconList}}. Then the best size will be used.
  
This function is equivalent to calling \code{\link{gtkWindowSetIconList}}
with a 1-element list.
  
See also \code{\link{gtkWindowSetDefaultIconList}} to set the icon
for all windows in your application in one go.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
