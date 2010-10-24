\alias{gtkComboSetValueInList}
\name{gtkComboSetValueInList}
\title{gtkComboSetValueInList}
\description{
Specifies whether the value entered in the text entry field must match one of
the values in the list. If this is set then the user will not be able to
perform any other action until a valid value has been entered.
\strong{WARNING: \code{gtk_combo_set_value_in_list} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
}
\usage{gtkComboSetValueInList(object, val, ok.if.empty)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCombo}}.}
\item{\verb{val}}{\code{TRUE} if the value entered must match one of the values in the list.}
\item{\verb{ok.if.empty}}{\code{TRUE} if an empty value is considered valid.}
}
\details{If an empty field is acceptable, the \code{ok.if.empty} parameter should be \code{TRUE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
