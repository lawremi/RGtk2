\alias{gtkProgressGetTextFromValue}
\name{gtkProgressGetTextFromValue}
\title{gtkProgressGetTextFromValue}
\description{
Returns the text indicating the progress based on the supplied value.
The current value for the \verb{\link{GtkProgress}} remains unchanged.  
\strong{WARNING: \code{gtk_progress_get_text_from_value} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressGetTextFromValue(object, value)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkProgress}}] a \verb{\link{GtkProgress}}.}
\item{\verb{value}}{[numeric] an absolute progress value to use when formatting the progress text.}
}
\value{[character] a string indicating the progress.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
