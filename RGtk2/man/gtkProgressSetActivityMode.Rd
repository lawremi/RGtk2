\alias{gtkProgressSetActivityMode}
\name{gtkProgressSetActivityMode}
\title{gtkProgressSetActivityMode}
\description{
A \code{\link{GtkProgress}} can be in one of two different modes: percentage
mode (the default) and activity mode.  In activity mode, the
progress is simply indicated as activity rather than as a percentage
complete.
\strong{WARNING: \code{gtk_progress_set_activity_mode} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressSetActivityMode(object, activity.mode)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkProgress}}.}
\item{\verb{activity.mode}}{a boolean, \code{TRUE} for activity mode.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
