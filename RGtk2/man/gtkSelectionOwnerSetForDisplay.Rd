\alias{gtkSelectionOwnerSetForDisplay}
\name{gtkSelectionOwnerSetForDisplay}
\title{gtkSelectionOwnerSetForDisplay}
\description{Claim ownership of a given selection for a particular widget, or,
if \code{widget} is \code{NULL}, release ownership of the selection.}
\usage{gtkSelectionOwnerSetForDisplay(display, widget = NULL, selection, 
    time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{display}}{the \verb{Gdkdisplay} where the selection is set}
\item{\verb{widget}}{new selection owner (a \verb{GdkWidget}), or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{selection}}{an interned atom representing the selection to claim.}
\item{\verb{time}}{timestamp with which to claim the selection}
}
\details{Since 2.2}
\value{[logical] TRUE if the operation succeeded}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
