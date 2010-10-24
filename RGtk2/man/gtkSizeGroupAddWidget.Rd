\alias{gtkSizeGroupAddWidget}
\name{gtkSizeGroupAddWidget}
\title{gtkSizeGroupAddWidget}
\description{Adds a widget to a \code{\link{GtkSizeGroup}}. In the future, the requisition
of the widget will be determined as the maximum of its requisition
and the requisition of the other widgets in the size group.
Whether this applies horizontally, vertically, or in both directions
depends on the mode of the size group. See \code{\link{gtkSizeGroupSetMode}}.}
\usage{gtkSizeGroupAddWidget(object, widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkSizeGroup}}}
\item{\verb{widget}}{the \code{\link{GtkWidget}} to add}
}
\details{When the widget is destroyed or no longer referenced elsewhere, it will 
be removed from the size group.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
