\alias{gtkToolbarPrependWidget}
\name{gtkToolbarPrependWidget}
\title{gtkToolbarPrependWidget}
\description{
Adds a widget to the beginning of the given toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_widget} is deprecated and should not be used in newly-written code.  
Adds a widget to the beginning of the given toolbar.  }
}
\usage{gtkToolbarPrependWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolbar}}]  a \code{\link{GtkToolbar}}.}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}} to add to the toolbar. }
\item{\code{tooltip.text}}{[char]  the element's tooltip.}
\item{\code{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
