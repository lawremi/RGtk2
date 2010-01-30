\alias{gdkKeyvalConvertCase}
\name{gdkKeyvalConvertCase}
\title{gdkKeyvalConvertCase}
\description{Obtains the upper- and lower-case versions of the keyval \code{symbol}.
Examples of keyvals are \verb{GDK_a}, \verb{GDK_Enter}, \verb{GDK_F1}, etc.}
\usage{gdkKeyvalConvertCase(symbol)}
\arguments{\item{\verb{symbol}}{[numeric]  a keyval}}
\value{
A list containing the following elements:
\item{\verb{lower}}{[numeric]  return location for lowercase version of \code{symbol}}
\item{\verb{upper}}{[numeric]  return location for uppercase version of \code{symbol}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
