\alias{gtkRangeSetFillLevel}
\name{gtkRangeSetFillLevel}
\title{gtkRangeSetFillLevel}
\description{Set the new position of the fill level indicator.}
\usage{gtkRangeSetFillLevel(object, fill.level)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRange}}}
\item{\verb{fill.level}}{the new position of the fill level indicator}
}
\details{The "fill level" is probably best described by its most prominent
use case, which is an indicator for the amount of pre-buffering in
a streaming media player. In that use case, the value of the range
would indicate the current play position, and the fill level would
be the position up to which the file/stream has been downloaded.
  
This amount of prebuffering can be displayed on the range's trough
and is themeable separately from the trough. To enable fill level
display, use \code{\link{gtkRangeSetShowFillLevel}}. The range defaults
to not showing the fill level.
  
Additionally, it's possible to restrict the range's slider position
to values which are smaller than the fill level. This is controller
by \code{\link{gtkRangeSetRestrictToFillLevel}} and is by default
enabled.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
