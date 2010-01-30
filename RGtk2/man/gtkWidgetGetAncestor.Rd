\alias{gtkWidgetGetAncestor}
\name{gtkWidgetGetAncestor}
\title{gtkWidgetGetAncestor}
\description{Gets the first ancestor of \code{widget} with type \code{widget.type}. For example,
\code{gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)} gets 
the first \verb{\link{GtkBox}} that's an ancestor of \code{widget}. No reference will be 
added to the returned widget; it should not be unreferenced. See note 
about checking for a toplevel \verb{\link{GtkWindow}} in the docs for 
\code{\link{gtkWidgetGetToplevel}}.}
\usage{gtkWidgetGetAncestor(object, widget.type)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{widget.type}}{[\verb{\link{GType}}]  ancestor type}
}
\details{Note that unlike \code{\link{gtkWidgetIsAncestor}}, \code{\link{gtkWidgetGetAncestor}} 
considers \code{widget} to be an ancestor of itself.  }
\value{[\verb{\link{GtkWidget}}]  the ancestor widget, or \code{NULL} if not found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
