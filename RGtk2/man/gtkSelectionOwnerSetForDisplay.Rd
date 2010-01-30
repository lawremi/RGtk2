\alias{gtkSelectionOwnerSetForDisplay}
\name{gtkSelectionOwnerSetForDisplay}
\title{gtkSelectionOwnerSetForDisplay}
\description{Claim ownership of a given selection for a particular widget, or,
if \code{widget} is \code{NULL}, release ownership of the selection.}
\usage{gtkSelectionOwnerSetForDisplay(display, widget = NULL, selection, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{Gdkdisplay} where the selection is set }
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  new selection owner (a \verb{GdkWidget}), or \code{NULL}.}
\item{\verb{selection}}{[\verb{\link{GdkAtom}}]  an interned atom representing the selection to claim.}
\item{\verb{time}}{[numeric]  timestamp with which to claim the selection}
}
\details{  Since  2.2}
\value{[logical]  TRUE if the operation succeeded }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
