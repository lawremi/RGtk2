\alias{gtkWindowPresentWithTime}
\name{gtkWindowPresentWithTime}
\title{gtkWindowPresentWithTime}
\description{Presents a window to the user in response to a user interaction.
If you need to present a window without a timestamp, use 
\code{\link{gtkWindowPresent}}. See \code{\link{gtkWindowPresent}} for details.}
\usage{gtkWindowPresentWithTime(object, timestamp)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}
\item{\verb{timestamp}}{[numeric]  the timestamp of the user interaction (typically a 
  button or key press event) which triggered this call}
}
\details{  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
