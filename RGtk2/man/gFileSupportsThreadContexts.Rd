\alias{gFileSupportsThreadContexts}
\name{gFileSupportsThreadContexts}
\title{gFileSupportsThreadContexts}
\description{Checks if \code{file} supports thread-default
contexts. If this returns \code{FALSE}, you cannot perform
asynchronous operations on \code{file} in a thread that has a
thread-default context.}
\usage{gFileSupportsThreadContexts(object)}
\arguments{\item{\verb{object}}{a \code{\link{GFile}}.}}
\details{Since 2.22}
\value{[logical] Whether or not \code{file} supports thread-default contexts.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
