\alias{gtkDialogAddActionWidget}
\name{gtkDialogAddActionWidget}
\title{gtkDialogAddActionWidget}
\description{Adds an activatable widget to the action area of a \code{\link{GtkDialog}},
connecting a signal handler that will emit the \code{\link{gtkDialogResponse}} 
signal on the dialog when the widget is activated. The widget is 
appended to the end of the dialog's action area. If you want to add a
non-activatable widget, simply pack it into the \code{action.area} field 
of the \code{\link{GtkDialog}} struct.}
\usage{gtkDialogAddActionWidget(object, child, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{child}}{an activatable widget}
\item{\verb{response.id}}{response ID for \code{child}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
