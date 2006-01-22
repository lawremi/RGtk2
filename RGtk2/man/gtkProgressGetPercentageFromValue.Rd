\alias{gtkProgressGetPercentageFromValue}
\name{gtkProgressGetPercentageFromValue}
\title{gtkProgressGetPercentageFromValue}
\description{
Returns the progress as a percentage calculated from the supplied
absolute progress value.
\strong{WARNING: \code{gtk_progress_get_percentage_from_value} is deprecated and should not be used in newly-written code.  
Returns the progress as a percentage calculated from the supplied
absolute progress value.}
}
\usage{gtkProgressGetPercentageFromValue(object, value)}
\arguments{
\item{\code{object}}{[\code{\link{GtkProgress}}] a \code{\link{GtkProgress}}.}
\item{\code{value}}{[numeric] an absolute progress value.}
}
\value{[numeric] a number between 0.0 and 1.0 indicating the percentage complete
represented by \code{value}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
