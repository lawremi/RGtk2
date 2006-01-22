\alias{gtkToolbarInsertWidget}
\name{gtkToolbarInsertWidget}
\title{gtkToolbarInsertWidget}
\description{
Inserts a widget in the toolbar at the given position.
\strong{WARNING: \code{gtk_toolbar_insert_widget} is deprecated and should not be used in newly-written code.  
Inserts a widget in the toolbar at the given position.  }
}
\usage{gtkToolbarInsertWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolbar}}]  a \code{\link{GtkToolbar}}.}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}} to add to the toolbar. }
\item{\code{tooltip.text}}{[char]  the element's tooltip.}
\item{\code{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
\item{\code{position}}{[integer]  the number of widgets to insert this widget after.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
