\alias{gtkComboSetCaseSensitive}
\name{gtkComboSetCaseSensitive}
\title{gtkComboSetCaseSensitive}
\description{
Specifies whether the text entered into the \code{\link{GtkEntry}} field and the text in
the list items is case sensitive.
\strong{WARNING: \code{gtk_combo_set_case_sensitive} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
}
\usage{gtkComboSetCaseSensitive(object, val)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCombo}}.}
\item{\verb{val}}{\code{TRUE} if the text in the list items is case sensitive.}
}
\details{This may be useful, for example, when you have called
\code{\link{gtkComboSetValueInList}} to limit the values entered, but you are not
worried about differences in case.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
