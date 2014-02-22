\alias{gtkMessageDialogNew}
\name{gtkMessageDialogNew}
\title{gtkMessageDialogNew}
\description{Creates a new message dialog, which is a simple dialog with an icon
indicating the dialog type (error, warning, etc.) and some text the
user may want to see. When the user clicks a button a "response"
signal is emitted with response IDs from \code{\link{GtkResponseType}}. See
\code{\link{GtkDialog}} for more details.}
\usage{gtkMessageDialogNew(parent = NULL, flags, type, buttons, ..., 
    show = TRUE)}
\arguments{
\item{\verb{parent}}{transient parent, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{flags}}{flags}
\item{\verb{type}}{type of message}
\item{\verb{buttons}}{set of buttons to use}
\item{\verb{...}}{a new \code{\link{GtkMessageDialog}}. \emph{[  \acronym{transfer none}  ]}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkMessageDialog}}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
