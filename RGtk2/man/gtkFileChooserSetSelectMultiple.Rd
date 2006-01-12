\alias{gtkFileChooserSetSelectMultiple}
\name{gtkFileChooserSetSelectMultiple}
\title{gtkFileChooserSetSelectMultiple}
\description{Sets whether multiple files can be selected in the file selector.  This is
only relevant if the action is set to be GTK_FILE_CHOOSER_ACTION_OPEN or
GTK_FILE_CHOOSER_ACTION_SAVE.  It cannot be set with either of the folder
actions.}
\usage{gtkFileChooserSetSelectMultiple(object, select.multiple)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}
\item{\code{select.multiple}}{[logical]  \code{TRUE} if multiple files can be selected.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
