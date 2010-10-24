\alias{gtkEntrySetActivatesDefault}
\name{gtkEntrySetActivatesDefault}
\title{gtkEntrySetActivatesDefault}
\description{If \code{setting} is \code{TRUE}, pressing Enter in the \code{entry} will activate the default
widget for the window containing the entry. This usually means that
the dialog box containing the entry will be closed, since the default
widget is usually one of the dialog buttons.}
\usage{gtkEntrySetActivatesDefault(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{setting}}{\code{TRUE} to activate window's default widget on Enter keypress}
}
\details{(For experts: if \code{setting} is \code{TRUE}, the entry calls
\code{\link{gtkWindowActivateDefault}} on the window containing the entry, in
the default handler for the \code{\link{gtkWidgetActivate}} signal.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
