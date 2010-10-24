\alias{gdkCairoResetClip}
\name{gdkCairoResetClip}
\title{gdkCairoResetClip}
\description{Resets the clip region for a Cairo context created by \code{\link{gdkCairoCreate}}.}
\usage{gdkCairoResetClip(cr, drawable)}
\arguments{
\item{\verb{cr}}{a \code{\link{Cairo}}}
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}}
}
\details{This resets the clip region to the "empty" state for the given drawable.
This is required for non-native windows since a direct call to
\code{\link{cairoResetClip}} would unset the clip region inherited from the
drawable (i.e. the window clip region), and thus let you e.g.
draw outside your window.
  
This is rarely needed though, since most code just create a new cairo_t
using \code{\link{gdkCairoCreate}} each time they want to draw something.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
