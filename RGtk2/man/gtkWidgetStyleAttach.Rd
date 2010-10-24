\alias{gtkWidgetStyleAttach}
\name{gtkWidgetStyleAttach}
\title{gtkWidgetStyleAttach}
\description{This function attaches the widget's \code{\link{GtkStyle}} to the widget's
\code{\link{GdkWindow}}. It is a replacement for}
\usage{gtkWidgetStyleAttach(object)}
\arguments{\item{\verb{object}}{\emph{undocumented
}}}
\details{\preformatted{widget->style = gtk_style_attach (widget->style, widget->window);
}  
and should only ever be called in a derived widget's "realize"
implementation which does not chain up to its parent class'
"realize" implementation, because one of the parent classes
(finally \code{\link{GtkWidget}}) would attach the style itself.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
