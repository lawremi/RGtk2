\alias{gtkWindowGetFrameDimensions}
\name{gtkWindowGetFrameDimensions}
\title{gtkWindowGetFrameDimensions}
\description{(Note: this is a special-purpose function intended for the
 framebuffer port; see \code{\link{gtkWindowSetHasFrame}}. It will not
 return the size of the window border drawn by the window manager, which is the normal
 case when using a windowing system.  See
 \code{\link{gdkWindowGetFrameExtents}} to get the standard window border
 extents.)}
\usage{gtkWindowGetFrameDimensions(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{Retrieves the dimensions of the frame window for this toplevel.
See \code{\link{gtkWindowSetHasFrame}}, \code{\link{gtkWindowSetFrameDimensions}}.}
\value{
A list containing the following elements:
\item{\verb{left}}{location to store the width of the frame at the left, or \code{NULL}. \emph{[  \acronym{allow-none}  ][  \acronym{out}  ]}}
\item{\verb{top}}{location to store the height of the frame at the top, or \code{NULL}. \emph{[  \acronym{allow-none}  ][  \acronym{out}  ]}}
\item{\verb{right}}{location to store the width of the frame at the returns, or \code{NULL}. \emph{[  \acronym{allow-none}  ][  \acronym{out}  ]}}
\item{\verb{bottom}}{location to store the height of the frame at the bottom, or \code{NULL}. \emph{[  \acronym{allow-none}  ][  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
