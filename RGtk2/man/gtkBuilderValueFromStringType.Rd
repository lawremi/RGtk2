\alias{gtkBuilderValueFromStringType}
\name{gtkBuilderValueFromStringType}
\title{gtkBuilderValueFromStringType}
\description{Like \code{\link{gtkBuilderValueFromString}}, this function demarshals 
a value from a string, but takes a \verb{\link{GType}} instead of \verb{\link{GParamSpec}}.
This function calls \code{gValueInit()} on the \code{value} argument, so it 
need not be initialised beforehand.}
\usage{gtkBuilderValueFromStringType(object, type, string, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{type}}{[\verb{\link{GType}}]  the \verb{\link{GType}} of the value}
\item{\verb{string}}{[character]  the string representation of the value}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{value}}{[R object]  the \verb{R object} to store the result in}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
