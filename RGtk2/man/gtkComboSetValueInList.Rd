\alias{gtkComboSetValueInList}
\name{gtkComboSetValueInList}
\title{gtkComboSetValueInList}
\description{
Specifies whether the value entered in the text entry field must match one of
the values in the list. If this is set then the user will not be able to
perform any other action until a valid value has been entered.
\strong{WARNING: \code{gtk_combo_set_value_in_list} is deprecated and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.  
Specifies whether the value entered in the text entry field must match one of
the values in the list. If this is set then the user will not be able to
perform any other action until a valid value has been entered.
  
If an empty field is acceptable, the \code{ok.if.empty} parameter should be \code{TRUE}.}
}
\usage{gtkComboSetValueInList(object, val, ok.if.empty)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCombo}}] a \code{\link{GtkCombo}}.}
\item{\code{val}}{[logical] \code{TRUE} if the value entered must match one of the values in the list.}
\item{\code{ok.if.empty}}{[logical] \code{TRUE} if an empty value is considered valid.}
}
\details{If an empty field is acceptable, the \code{ok.if.empty} parameter should be \code{TRUE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
