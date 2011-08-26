\alias{gIOModuleNew}
\name{gIOModuleNew}
\title{gIOModuleNew}
\description{Creates a new GIOModule that will load the specific
shared library when in use.}
\usage{gIOModuleNew(filename)}
\arguments{\item{\verb{filename}}{filename of the shared library module.}}
\value{[\code{\link{GIOModule}}] a \code{\link{GIOModule}} from given \code{filename},
or \code{NULL} on error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
