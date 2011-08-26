\alias{gtkComboBoxEntryNewWithModel}
\name{gtkComboBoxEntryNewWithModel}
\title{gtkComboBoxEntryNewWithModel}
\description{Creates a new \code{\link{GtkComboBoxEntry}} which has a \code{\link{GtkEntry}} as child and a list
of strings as popup. You can get the \code{\link{GtkEntry}} from a \code{\link{GtkComboBoxEntry}}
using GTK_ENTRY (GTK_BIN (combo_box_entry)->child). To add and remove
strings from the list, just modify \code{model} using its data manipulation
API.}
\usage{gtkComboBoxEntryNewWithModel(model, text.column, show = TRUE)}
\arguments{
\item{\verb{model}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{text.column}}{A column in \code{model} to get the strings from.}
}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] A new \code{\link{GtkComboBoxEntry}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
