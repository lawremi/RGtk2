\alias{gtkToolbarAppendElement}
\name{gtkToolbarAppendElement}
\title{gtkToolbarAppendElement}
\description{
Adds a new element to the end of a toolbar.
\strong{WARNING: \code{gtk_toolbar_append_element} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarAppendElement(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolbar}}]  a \code{\link{GtkToolbar}}.}
\item{\code{type}}{[\code{\link{GtkToolbarChildType}}]  a value of type \code{\link{GtkToolbarChildType}} that determines what \code{widget} will be.}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}, or \code{NULL}.}
\item{\code{text}}{[char]  the element's label.}
\item{\code{tooltip.text}}{[char]  the element's tooltip.}
\item{\code{tooltip.private.text}}{[char]  used for context-sensitive help about this toolbar element.}
\item{\code{icon}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}} that provides pictorial representation of the element's function.}
\item{\code{callback}}{[GtkSignalFunc]  the function to be executed when the button is pressed.}
\item{\code{user.data}}{[R object]  any data you wish to pass to the callback.}
}
\details{If \code{type} == \code{GTK_TOOLBAR_CHILD_WIDGET}, \code{widget} is used as the new element.
If \code{type} == \code{GTK_TOOLBAR_CHILD_RADIOBUTTON}, \code{widget} is used to determine
the radio group for the new element. In all other cases, \code{widget} must
be \code{NULL}.
  
\code{callback} must be a pointer to a function taking a \code{\link{GtkWidget}} and a gpointer as
arguments. Use the \code{gtkSignalFunc()} to cast the function to \code{GtkSignalFunc}.  

  }
\value{[\code{\link{GtkWidget}}]  the new toolbar element as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
