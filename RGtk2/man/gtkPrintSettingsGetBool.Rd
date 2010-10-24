\alias{gtkPrintSettingsGetBool}
\name{gtkPrintSettingsGetBool}
\title{gtkPrintSettingsGetBool}
\description{Returns the boolean represented by the value
that is associated with \code{key}. }
\usage{gtkPrintSettingsGetBool(object, key)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{key}}{a key}
}
\details{The string "true" represents \code{TRUE}, any other 
string \code{FALSE}.
  Since 2.10}
\value{[logical] \code{TRUE}, if \code{key} maps to a true value.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
