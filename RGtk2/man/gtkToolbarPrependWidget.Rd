\alias{gtkToolbarPrependWidget}
\name{gtkToolbarPrependWidget}
\title{gtkToolbarPrependWidget}
\description{
Adds a widget to the beginning of the given toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_widget} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarPrependWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}.}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} to add to the toolbar. }
\item{\verb{tooltip.text}}{[char]  the element's tooltip.}
\item{\verb{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
