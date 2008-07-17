\alias{gtkPrintSettingsGetBool}
\name{gtkPrintSettingsGetBool}
\title{gtkPrintSettingsGetBool}
\description{Returns the boolean represented by the value
that is associated with \code{key}. }
\usage{gtkPrintSettingsGetBool(object, key)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
\item{\code{key}}{[character]  a key}
}
\details{The string "true" represents \code{TRUE}, any other 
string \code{FALSE}.  

  Since  2.10}
\value{[logical] \code{TRUE}, if \code{key} maps to a true value.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
