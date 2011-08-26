\alias{gtkProgressSetFormatString}
\name{gtkProgressSetFormatString}
\title{gtkProgressSetFormatString}
\description{
Sets a format string used to display text indicating the
current progress.  The string can contain the following substitution characters:
\itemize{
\item \%v - the current progress value.
\item \%l - the lower bound for the progress value.
\item \%u - the upper bound for the progress value.
\item \%p - the current progress percentage.
}
\strong{WARNING: \code{gtk_progress_set_format_string} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressSetFormatString(object, format)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkProgress}}.}
\item{\verb{format}}{a string used to display progress text, or \code{NULL}
to restore to the default format.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
