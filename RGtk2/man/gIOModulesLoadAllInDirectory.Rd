\alias{gIOModulesLoadAllInDirectory}
\name{gIOModulesLoadAllInDirectory}
\title{gIOModulesLoadAllInDirectory}
\description{Loads all the modules in the specified directory.}
\usage{gIOModulesLoadAllInDirectory(dirname)}
\arguments{\item{\verb{dirname}}{pathname for a directory containing modules to load.}}
\value{[list] a list of \verb{GIOModules} loaded from the directory,
All the modules are loaded into memory, if you want to
unload them (enabling on-demand loading) you must call
\code{gTypeModuleUnuse()} on all the modules.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
