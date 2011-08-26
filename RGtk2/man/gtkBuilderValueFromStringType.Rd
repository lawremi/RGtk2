\alias{gtkBuilderValueFromStringType}
\name{gtkBuilderValueFromStringType}
\title{gtkBuilderValueFromStringType}
\description{Like \code{\link{gtkBuilderValueFromString}}, this function demarshals 
a value from a string, but takes a \code{\link{GType}} instead of \code{\link{GParamSpec}}.
This function calls \code{gValueInit()} on the \code{value} argument, so it 
need not be initialised beforehand.}
\usage{gtkBuilderValueFromStringType(object, type, string, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{type}}{the \code{\link{GType}} of the value}
\item{\verb{string}}{the string representation of the value}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Upon errors \code{FALSE} will be returned and \code{error} will be assigned a
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
