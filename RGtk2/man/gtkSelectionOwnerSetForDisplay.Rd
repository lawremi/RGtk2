\alias{gtkSelectionOwnerSetForDisplay}
\name{gtkSelectionOwnerSetForDisplay}
\title{gtkSelectionOwnerSetForDisplay}
\description{Claim ownership of a given selection for a particular widget, or,
if \code{widget} is \code{NULL}, release ownership of the selection.}
\usage{gtkSelectionOwnerSetForDisplay(display, widget = NULL, selection, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\code{display}}{[\code{\link{GdkDisplay}}]  the \code{Gdkdisplay} where the selection is set }
\item{\code{widget}}{[\code{\link{GtkWidget}}]  new selection owner (a \code{GdkWidget}), or \code{NULL}.}
\item{\code{selection}}{[\code{\link{GdkAtom}}]  an interned atom representing the selection to claim.}
\item{\code{time}}{[numeric]  timestamp with which to claim the selection}
}
\details{  Since  2.2}
\value{[logical]  TRUE if the operation succeeded }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
