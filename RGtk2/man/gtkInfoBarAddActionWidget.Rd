\alias{gtkInfoBarAddActionWidget}
\name{gtkInfoBarAddActionWidget}
\title{gtkInfoBarAddActionWidget}
\description{Add an activatable widget to the action area of a \code{\link{GtkInfoBar}},
connecting a signal handler that will emit the \code{\link{gtkInfoBarResponse}}
signal on the message area when the widget is activated. The widget
is appended to the end of the message areas action area.}
\usage{gtkInfoBarAddActionWidget(object, child, response.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkInfoBar}}}
\item{\verb{child}}{an activatable widget}
\item{\verb{response.id}}{response ID for \code{child}}
}
\details{Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
