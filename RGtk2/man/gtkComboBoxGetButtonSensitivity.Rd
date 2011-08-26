\alias{gtkComboBoxGetButtonSensitivity}
\name{gtkComboBoxGetButtonSensitivity}
\title{gtkComboBoxGetButtonSensitivity}
\description{Returns whether the combo box sets the dropdown button
sensitive or not when there are no items in the model.}
\usage{gtkComboBoxGetButtonSensitivity(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkComboBox}}}}
\details{Since 2.14}
\value{[\code{\link{GtkSensitivityType}}] \code{GTK_SENSITIVITY_ON} if the dropdown button
is sensitive when the model is empty, \code{GTK_SENSITIVITY_OFF}
if the button is always insensitive or
\code{GTK_SENSITIVITY_AUTO} if it is only sensitive as long as
the model has one item to be selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
