\alias{gtkToolbarPrependElement}
\name{gtkToolbarPrependElement}
\title{gtkToolbarPrependElement}
\description{
Adds a new element to the beginning of a toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_element} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gtkToolbarInsert}} instead.}
}
\usage{gtkToolbarPrependElement(object, type, widget, text, tooltip.text, 
    tooltip.private.text, icon, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}.}
\item{\verb{type}}{a value of type \code{\link{GtkToolbarChildType}} that determines what \code{widget} will be.}
\item{\verb{widget}}{a \code{\link{GtkWidget}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{text}}{the element's label.}
\item{\verb{tooltip.text}}{the element's tooltip.}
\item{\verb{tooltip.private.text}}{used for context-sensitive help about this toolbar element.}
\item{\verb{icon}}{a \code{\link{GtkWidget}} that provides pictorial representation of the element's function.}
\item{\verb{callback}}{the function to be executed when the button is pressed.}
\item{\verb{user.data}}{any data you wish to pass to the callback.}
}
\details{If \code{type} == \code{GTK_TOOLBAR_CHILD_WIDGET}, \code{widget} is used as the new element.
If \code{type} == \code{GTK_TOOLBAR_CHILD_RADIOBUTTON}, \code{widget} is used to determine
the radio group for the new element. In all other cases, \code{widget} must
be \code{NULL}.
  \code{callback} must be a pointer to a function taking a \code{\link{GtkWidget}} and a gpointer as
arguments. Use \code{gCallback()} to cast the function to \verb{GCallback}.}
\value{[\code{\link{GtkWidget}}] the new toolbar element as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
