\alias{gtkBuilderValueFromStringType}
\name{gtkBuilderValueFromStringType}
\title{gtkBuilderValueFromStringType}
\description{Like \code{\link{gtkBuilderValueFromString}}, this function demarshals 
a value from a string, but takes a \code{\link{GType}} instead of \code{\link{GParamSpec}}.
This function calls \code{gValueInit()} on the \code{value} argument, so it 
need not be initialised beforehand.}
\usage{gtkBuilderValueFromStringType(object, type, string, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}
\item{\code{type}}{[\code{\link{GType}}]  the \code{\link{GType}} of the value}
\item{\code{string}}{[character]  the string representation of the value}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} on success}
\item{\code{value}}{[R object]  the \code{R object} to store the result in}
\item{\code{error}}{[\code{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
