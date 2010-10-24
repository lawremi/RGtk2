\alias{gtkEntryProgressPulse}
\name{gtkEntryProgressPulse}
\title{gtkEntryProgressPulse}
\description{Indicates that some progress is made, but you don't know how much.
Causes the entry's progress indicator to enter "activity mode,"
where a block bounces back and forth. Each call to
\code{\link{gtkEntryProgressPulse}} causes the block to move by a little bit
(the amount of movement per pulse is determined by
\code{\link{gtkEntrySetProgressPulseStep}}).}
\usage{gtkEntryProgressPulse(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
