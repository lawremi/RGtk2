\alias{gtkComboSetItemString}
\name{gtkComboSetItemString}
\title{gtkComboSetItemString}
\description{
Sets the string to place in the \code{\link{GtkEntry}} field when a particular list item is
selected. This is needed if the list item is not a simple label.
\strong{WARNING: \code{gtk_combo_set_item_string} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
}
\usage{gtkComboSetItemString(object, item, item.value)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCombo}}.}
\item{\verb{item}}{a \code{\link{GtkItem}}.}
\item{\verb{item.value}}{the string to place in the \code{\link{GtkEntry}} when \code{item} is selected.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
