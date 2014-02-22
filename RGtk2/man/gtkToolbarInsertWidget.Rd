\alias{gtkToolbarInsertWidget}
\name{gtkToolbarInsertWidget}
\title{gtkToolbarInsertWidget}
\description{
Inserts a widget in the toolbar at the given position.
\strong{WARNING: \code{gtk_toolbar_insert_widget} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gtkToolbarInsert}} instead.}
}
\usage{gtkToolbarInsertWidget(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, 
    position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}.}
\item{\verb{widget}}{a \code{\link{GtkWidget}} to add to the toolbar.}
\item{\verb{tooltip.text}}{the element's tooltip. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tooltip.private.text}}{used for context-sensitive help about this toolbar element. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{the number of widgets to insert this widget after.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
