\alias{gtkFileChooserDialogNew}
\name{gtkFileChooserDialogNew}
\title{gtkFileChooserDialogNew}
\description{Creates a new \code{\link{GtkFileChooserDialog}}.  This function is analogous to
\code{\link{gtkDialogNewWithButtons}}.}
\usage{gtkFileChooserDialogNew(title = NULL, parent = NULL, action, 
    ..., show = TRUE)}
\arguments{
\item{\verb{title}}{Title of the dialog, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{parent}}{Transient parent of the dialog, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{action}}{Open or save mode for the dialog}
\item{\verb{...}}{a new \code{\link{GtkFileChooserDialog}}}
}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkFileChooserDialog}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
