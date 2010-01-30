\alias{gtkAspectFrameNew}
\name{gtkAspectFrameNew}
\title{gtkAspectFrameNew}
\description{Create a new \verb{\link{GtkAspectFrame}}.}
\usage{gtkAspectFrameNew(label = NULL, xalign = NULL, yalign = NULL, ratio = NULL, obey.child = NULL, show = TRUE)}
\arguments{
\item{\verb{label}}{[character] Label text.}
\item{\verb{xalign}}{[numeric] Horizontal alignment of the child within the allocation of
the \verb{\link{GtkAspectFrame}}. This ranges from 0.0 (left aligned)
to 1.0 (right aligned)}
\item{\verb{yalign}}{[numeric] Vertical alignment of the child within the allocation of
the \verb{\link{GtkAspectFrame}}. This ranges from 0.0 (left aligned)
to 1.0 (right aligned)}
\item{\verb{ratio}}{[numeric] The desired aspect ratio.}
\item{\verb{obey.child}}{[logical] If \code{TRUE}, \code{ratio} is ignored, and the aspect
    ratio is taken from the requistion of the child.}
}
\value{[\verb{\link{GtkWidget}}] the new \verb{\link{GtkAspectFrame}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
