\alias{gtkSelectionAddTarget}
\name{gtkSelectionAddTarget}
\title{gtkSelectionAddTarget}
\description{Appends a specified target to the list of supported targets for a 
given widget and selection.}
\usage{gtkSelectionAddTarget(object, selection, target, info)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]   a \code{GtkTarget}}
\item{\code{selection}}{[\code{\link{GdkAtom}}]  the selection}
\item{\code{target}}{[\code{\link{GdkAtom}}]  target to add.}
\item{\code{info}}{[numeric]  A unsigned integer which will be passed back to the application.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
