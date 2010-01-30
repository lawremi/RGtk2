\alias{gtkComboBoxEntryNewWithModel}
\name{gtkComboBoxEntryNewWithModel}
\title{gtkComboBoxEntryNewWithModel}
\description{Creates a new \verb{\link{GtkComboBoxEntry}} which has a \verb{\link{GtkEntry}} as child and a list
of strings as popup. You can get the \verb{\link{GtkEntry}} from a \verb{\link{GtkComboBoxEntry}}
using GTK_ENTRY (GTK_BIN (combo_box_entry)->child). To add and remove
strings from the list, just modify \code{model} using its data manipulation
API.}
\usage{gtkComboBoxEntryNewWithModel(model, text.column)}
\arguments{
\item{\verb{model}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}
\item{\verb{text.column}}{[integer]  A column in \code{model} to get the strings from.}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkWidget}}]  A new \verb{\link{GtkComboBoxEntry}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
