\alias{gtkComboDisableActivate}
\name{gtkComboDisableActivate}
\title{gtkComboDisableActivate}
\description{
Stops the \code{\link{GtkCombo}} widget from showing the popup list when the \code{\link{GtkEntry}}
emits the "activate" signal, i.e. when the Return key is pressed.
This may be useful if, for example, you want the Return key to close a dialog
instead.
\strong{WARNING: \code{gtk_combo_disable_activate} is deprecated and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
}
\usage{gtkComboDisableActivate(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkCombo}}] a \code{\link{GtkCombo}}.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
