\alias{gtkEntrySetCursorHadjustment}
\name{gtkEntrySetCursorHadjustment}
\title{gtkEntrySetCursorHadjustment}
\description{Hooks up an adjustment to the cursor position in an entry, so that when 
the cursor is moved, the adjustment is scrolled to show that position. 
See \code{\link{gtkScrolledWindowGetHadjustment}} for a typical way of obtaining 
the adjustment.}
\usage{gtkEntrySetCursorHadjustment(object, adjustment)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{adjustment}}{an adjustment which should be adjusted when the cursor
is moved, or \code{NULL}}
}
\details{The adjustment has to be in pixel units and in the same coordinate system 
as the entry.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
