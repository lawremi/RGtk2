\alias{gtkRangeSetUpdatePolicy}
\name{gtkRangeSetUpdatePolicy}
\title{gtkRangeSetUpdatePolicy}
\description{Sets the update policy for the range. \verb{GTK_UPDATE_CONTINUOUS} means that
anytime the range slider is moved, the range value will change and the
value_changed signal will be emitted. \verb{GTK_UPDATE_DELAYED} means that
the value will be updated after a brief timeout where no slider motion
occurs, so updates are spaced by a short time rather than
continuous. \verb{GTK_UPDATE_DISCONTINUOUS} means that the value will only
be updated when the user releases the button and ends the slider
drag operation.}
\usage{gtkRangeSetUpdatePolicy(object, policy)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRange}}}
\item{\verb{policy}}{update policy}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
