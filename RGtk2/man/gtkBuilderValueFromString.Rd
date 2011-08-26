\alias{gtkBuilderValueFromString}
\name{gtkBuilderValueFromString}
\title{gtkBuilderValueFromString}
\description{This function demarshals a value from a string. This function
calls \code{gValueInit()} on the \code{value} argument, so it need not be
initialised beforehand.}
\usage{gtkBuilderValueFromString(object, pspec, string, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{pspec}}{the \code{\link{GParamSpec}} for the property}
\item{\verb{string}}{the string representation of the value}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function can handle char, uchar, boolean, int, uint, long,
ulong, enum, flags, float, double, string, \code{\link{GdkColor}} and
\code{\link{GtkAdjustment}} type values. Support for \code{\link{GtkWidget}} type values is
still to come.
  
Upon errors \code{FALSE} will be returned and \code{error} will be assigned a
\code{\link{GError}} from the \verb{GTK_BUILDER_ERROR} domain.
  Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{value}}{the \verb{R object} to store the result in}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
