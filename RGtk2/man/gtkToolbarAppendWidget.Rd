\alias{gtkToolbarAppendWidget}
\name{gtkToolbarAppendWidget}
\title{gtkToolbarAppendWidget}
\description{
Adds a widget to the end of the given toolbar.
\strong{WARNING: \code{gtk_toolbar_append_widget} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarAppendWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}.}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} to add to the toolbar. }
\item{\verb{tooltip.text}}{[char]  the element's tooltip.}
\item{\verb{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
