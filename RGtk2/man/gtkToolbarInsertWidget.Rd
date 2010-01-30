\alias{gtkToolbarInsertWidget}
\name{gtkToolbarInsertWidget}
\title{gtkToolbarInsertWidget}
\description{
Inserts a widget in the toolbar at the given position.
\strong{WARNING: \code{gtk_toolbar_insert_widget} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarInsertWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, position)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}.}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} to add to the toolbar. }
\item{\verb{tooltip.text}}{[char]  the element's tooltip.}
\item{\verb{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
\item{\verb{position}}{[integer]  the number of widgets to insert this widget after.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
