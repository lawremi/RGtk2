\alias{gtkAboutDialogSetName}
\name{gtkAboutDialogSetName}
\title{gtkAboutDialogSetName}
\description{
Sets the name to display in the about dialog.
If this is not set, it defaults to \code{gGetApplicationName()}.
\strong{WARNING: \code{gtk_about_dialog_set_name} has been deprecated since version 2.12 and should not be used in newly-written code. Use \code{\link{gtkAboutDialogSetProgramName}} instead.}
}
\usage{gtkAboutDialogSetName(object, name = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAboutDialog}}}
\item{\verb{name}}{the program name. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
