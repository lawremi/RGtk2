\alias{gtkComboSetItemString}
\name{gtkComboSetItemString}
\title{gtkComboSetItemString}
\description{
Sets the string to place in the \code{\link{GtkEntry}} field when a particular list item is
selected. This is needed if the list item is not a simple label.
\strong{WARNING: \code{gtk_combo_set_item_string} is deprecated and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.  
Sets the string to place in the \code{\link{GtkEntry}} field when a particular list item is
selected. This is needed if the list item is not a simple label.}
}
\usage{gtkComboSetItemString(object, item, item.value)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCombo}}] a \code{\link{GtkCombo}}.}
\item{\code{item}}{[\code{\link{GtkItem}}] a \code{\link{GtkItem}}.}
\item{\code{item.value}}{[character] the string to place in the \code{\link{GtkEntry}} when \code{item} is selected.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
