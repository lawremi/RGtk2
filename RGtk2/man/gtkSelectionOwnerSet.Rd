\alias{gtkSelectionOwnerSet}
\name{gtkSelectionOwnerSet}
\title{gtkSelectionOwnerSet}
\description{Claims ownership of a given selection for a particular widget,
or, if \code{widget} is \code{NULL}, release ownership of the selection.}
\usage{gtkSelectionOwnerSet(object, selection, time = GDK_CURRENT_TIME)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]   a \code{\link{GtkWidget}}, or \code{NULL}.}
\item{\code{selection}}{[\code{\link{GdkAtom}}]   an interned atom representing the selection to claim}
\item{\code{time}}{[numeric]  timestamp with which to claim the selection}
}
\value{[logical]  \code{TRUE} if the operation succeeded}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
