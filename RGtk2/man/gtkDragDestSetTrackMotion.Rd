\alias{gtkDragDestSetTrackMotion}
\name{gtkDragDestSetTrackMotion}
\title{gtkDragDestSetTrackMotion}
\description{Tells the widget to emit ::drag-motion and ::drag-leave
events regardless of the targets and the \code{GTK_DEST_DEFAULT_MOTION}
flag. }
\usage{gtkDragDestSetTrackMotion(object, track.motion)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}} that's a drag destination}
\item{\verb{track.motion}}{whether to accept all targets}
}
\details{This may be used when a widget wants to do generic
actions regardless of the targets that the source offers.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
