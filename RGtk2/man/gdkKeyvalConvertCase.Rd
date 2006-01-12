\alias{gdkKeyvalConvertCase}
\name{gdkKeyvalConvertCase}
\title{gdkKeyvalConvertCase}
\description{Obtains the upper- and lower-case versions of the keyval \code{symbol}.
Examples of keyvals are \code{GDK_a}, \code{GDK_Enter}, \code{GDK_F1}, etc.}
\usage{gdkKeyvalConvertCase(symbol)}
\arguments{\item{\code{symbol}}{[numeric]  a keyval}}
\value{
A list containing the following elements:
\item{\code{lower}}{[numeric]  return location for lowercase version of \code{symbol}}
\item{\code{upper}}{[numeric]  return location for uppercase version of \code{symbol}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
