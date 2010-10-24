\alias{gtkProgressGetCurrentText}
\name{gtkProgressGetCurrentText}
\title{gtkProgressGetCurrentText}
\description{
Returns the current text associated with the \code{\link{GtkProgress}}.  This
text is the based on the underlying format string after any substitutions
are made.
\strong{WARNING: \code{gtk_progress_get_current_text} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressGetCurrentText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkProgress}}.}}
\value{[character] the text indicating the current progress.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
