\alias{gtkToolbarPrependWidget}
\name{gtkToolbarPrependWidget}
\title{gtkToolbarPrependWidget}
\description{
Adds a widget to the beginning of the given toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_widget} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gtkToolbarInsert}} instead.}
}
\usage{gtkToolbarPrependWidget(object, widget, tooltip.text = NULL, 
    tooltip.private.text = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}.}
\item{\verb{widget}}{a \code{\link{GtkWidget}} to add to the toolbar.}
\item{\verb{tooltip.text}}{the element's tooltip. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tooltip.private.text}}{used for context-sensitive help about this toolbar element. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
