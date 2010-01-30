\alias{gtkToolbarPrependElement}
\name{gtkToolbarPrependElement}
\title{gtkToolbarPrependElement}
\description{
Adds a new element to the beginning of a toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_element} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarPrependElement(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}.}
\item{\verb{type}}{[\code{\link{GtkToolbarChildType}}]  a value of type \code{\link{GtkToolbarChildType}} that determines what \code{widget} will be.}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}, or \code{NULL}}
\item{\verb{text}}{[char]  the element's label.}
\item{\verb{tooltip.text}}{[char]  the element's tooltip.}
\item{\verb{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
\item{\verb{icon}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} that provides pictorial representation of the element's function.}
\item{\verb{callback}}{[GtkSignalFunc]  the function to be executed when the button is pressed.}
\item{\verb{user.data}}{[R object]  any data you wish to pass to the callback.}
}
\details{If \code{type} == \code{GTK_TOOLBAR_CHILD_WIDGET}, \code{widget} is used as the new element.
If \code{type} == \code{GTK_TOOLBAR_CHILD_RADIOBUTTON}, \code{widget} is used to determine
the radio group for the new element. In all other cases, \code{widget} must
be \code{NULL}.
  \code{callback} must be a pointer to a function taking a \verb{\link{GtkWidget}} and a gpointer as
arguments. Use the \code{gtkSignalFunc()} to cast the function to \verb{GtkSignalFunc}.  }
\value{[\verb{\link{GtkWidget}}]  the new toolbar element as a \verb{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
