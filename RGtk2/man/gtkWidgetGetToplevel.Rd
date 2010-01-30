\alias{gtkWidgetGetToplevel}
\name{gtkWidgetGetToplevel}
\title{gtkWidgetGetToplevel}
\description{This function returns the topmost widget in the container hierarchy
\code{widget} is a part of. If \code{widget} has no parent widgets, it will be
returned as the topmost widget. No reference will be added to the
returned widget; it should not be unreferenced.}
\usage{gtkWidgetGetToplevel(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{Note the difference in behavior vs. \code{\link{gtkWidgetGetAncestor}};
\code{gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)} 
would return
\code{NULL} if \code{widget} wasn't inside a toplevel window, and if the
window was inside a \verb{GtkWindow-derived} widget which was in turn
inside the toplevel \verb{\link{GtkWindow}}. While the second case may
seem unlikely, it actually happens when a \verb{\link{GtkPlug}} is embedded
inside a \verb{\link{GtkSocket}} within the same application.
  
To reliably find the toplevel \verb{\link{GtkWindow}}, use
\code{\link{gtkWidgetGetToplevel}} and check if the \code{TOPLEVEL} flags
is set on the result.
\preformatted{
toplevel <- widget$getToplevel()
if (toplevel$flags() & GtkWidgetFlags["toplevel"])
{
  # Perform action on toplevel.
}
}  }
\value{[\verb{\link{GtkWidget}}]  the topmost ancestor of \code{widget}, or \code{widget} itself 
   if there's no ancestor.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
