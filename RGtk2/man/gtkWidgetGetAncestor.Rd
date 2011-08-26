\alias{gtkWidgetGetAncestor}
\name{gtkWidgetGetAncestor}
\title{gtkWidgetGetAncestor}
\description{Gets the first ancestor of \code{widget} with type \code{widget.type}. For example,
\code{gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)} gets 
the first \code{\link{GtkBox}} that's an ancestor of \code{widget}. No reference will be 
added to the returned widget; it should not be unreferenced. See note 
about checking for a toplevel \code{\link{GtkWindow}} in the docs for 
\code{\link{gtkWidgetGetToplevel}}.}
\usage{gtkWidgetGetAncestor(object, widget.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{widget.type}}{ancestor type}
}
\details{Note that unlike \code{\link{gtkWidgetIsAncestor}}, \code{\link{gtkWidgetGetAncestor}} 
considers \code{widget} to be an ancestor of itself.}
\value{[\code{\link{GtkWidget}}] the ancestor widget, or \code{NULL} if not found. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
