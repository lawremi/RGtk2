\alias{gtkComboDisableActivate}
\name{gtkComboDisableActivate}
\title{gtkComboDisableActivate}
\description{
Stops the \verb{\link{GtkCombo}} widget from showing the popup list when the \verb{\link{GtkEntry}}
emits the "activate" signal, i.e. when the Return key is pressed.
This may be useful if, for example, you want the Return key to close a dialog
instead.
\strong{WARNING: \code{gtk_combo_disable_activate} has been deprecated since version 2.4 and should not be used in newly-written code. Use \verb{\link{GtkComboBox}} instead.}
}
\usage{gtkComboDisableActivate(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkCombo}}] a \verb{\link{GtkCombo}}.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
