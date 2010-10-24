\alias{gtkProgressBarPulse}
\name{gtkProgressBarPulse}
\title{gtkProgressBarPulse}
\description{Indicates that some progress is made, but you don't know how much.
Causes the progress bar to enter "activity mode," where a block
bounces back and forth. Each call to \code{\link{gtkProgressBarPulse}}
causes the block to move by a little bit (the amount of movement
per pulse is determined by \code{\link{gtkProgressBarSetPulseStep}}).}
\usage{gtkProgressBarPulse(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkProgressBar}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
