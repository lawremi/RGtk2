\alias{gtkFileSelectionNew}
\name{gtkFileSelectionNew}
\title{gtkFileSelectionNew}
\description{
Creates a new file selection dialog box. By default it will contain a \code{\link{GtkTreeView}} of the application's current working directory, and a file listing. Operation buttons that allow the user to create a directory, delete files and rename files, are also present.
\strong{WARNING: \code{gtk_file_selection_new} is deprecated and should not be used in newly-written code. Use \code{\link{gtkFileChooserDialogNew}} instead}
}
\usage{gtkFileSelectionNew(title = NULL, show = TRUE)}
\arguments{\item{\verb{title}}{a message that will be placed in the file requestor's titlebar.}}
\value{[\code{\link{GtkWidget}}] the new file selection.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
