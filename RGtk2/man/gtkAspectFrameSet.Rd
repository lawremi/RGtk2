\alias{gtkAspectFrameSet}
\name{gtkAspectFrameSet}
\title{gtkAspectFrameSet}
\description{Set parameters for an existing \code{\link{GtkAspectFrame}}.}
\usage{gtkAspectFrameSet(object, xalign = 0, yalign = 0, ratio = 1, obey.child = 1)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAspectFrame}}] a \code{\link{GtkAspectFrame}}}
\item{\code{xalign}}{[numeric] Horizontal alignment of the child within the allocation of
the \code{\link{GtkAspectFrame}}. This ranges from 0.0 (left aligned)
to 1.0 (right aligned)}
\item{\code{yalign}}{[numeric] Vertical alignment of the child within the allocation of
the \code{\link{GtkAspectFrame}}. This ranges from 0.0 (left aligned)
to 1.0 (right aligned)}
\item{\code{ratio}}{[numeric] The desired aspect ratio.}
\item{\code{obey.child}}{[logical] If \code{TRUE}, \code{ratio} is ignored, and the aspect
    ratio is taken from the requistion of the child.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
