\alias{gtkExit}
\name{gtkExit}
\title{gtkExit}
\description{
Terminates the program and returns the given exit code to the caller.
This function will shut down the GUI and free all resources allocated
for GTK+.
\strong{WARNING: \code{gtk_exit} is deprecated and should not be used in newly-written code. Use the standard \code{exit()} function instead.}
}
\usage{gtkExit(error.code)}
\arguments{\item{\verb{error.code}}{Return value to pass to the caller. This is dependent on the
target system but at least on Unix systems \code{0} means success.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
