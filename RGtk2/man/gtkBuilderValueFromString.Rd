\alias{gtkBuilderValueFromString}
\name{gtkBuilderValueFromString}
\title{gtkBuilderValueFromString}
\description{This function demarshals a value from a string. This function
calls \code{gValueInit()} on the \code{value} argument, so it need not be
initialised beforehand.}
\usage{gtkBuilderValueFromString(object, pspec, string, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{pspec}}{[\verb{\link{GParamSpec}}]  the \verb{\link{GParamSpec}} for the property}
\item{\verb{string}}{[character]  the string representation of the value}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function can handle char, uchar, boolean, int, uint, long,
ulong, enum, flags, float, double, string, \verb{\link{GdkColor}} and
\verb{\link{GtkAdjustment}} type values. Support for \verb{\link{GtkWidget}} type values is
still to come.  

  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{value}}{[R object]  the \verb{R object} to store the result in}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
