\alias{gtkFileChooserSetAction}
\name{gtkFileChooserSetAction}
\title{gtkFileChooserSetAction}
\description{Sets the type of operation that the chooser is performing; the
user interface is adapted to suit the selected action. For example,
an option to create a new folder might be shown if the action is
\code{GTK_FILE_CHOOSER_ACTION_SAVE} but not if the action is
\code{GTK_FILE_CHOOSER_ACTION_OPEN}.}
\usage{gtkFileChooserSetAction(object, action)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{action}}{the action that the file selector is performing}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
