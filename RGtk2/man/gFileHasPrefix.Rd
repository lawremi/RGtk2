\alias{gFileHasPrefix}
\name{gFileHasPrefix}
\title{gFileHasPrefix}
\description{Checks whether \code{file} has the prefix specified by \code{prefix}. In other word, 
if the names of inital elements of \code{file}s pathname match \code{prefix}.
Only full pathname elements are matched, so a path like /foo is not
considered a prefix of /foobar, only of /foo/bar.}
\usage{gFileHasPrefix(object, descendant)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{descendant}}{input \code{\link{GFile}}.}
}
\details{This call does no i/o, as it works purely on names. As such it can 
sometimes return \code{FALSE} even if \code{file} is inside a \code{prefix} (from a 
filesystem point of view), because the prefix of \code{file} is an alias 
of \code{prefix}.}
\value{[logical] \code{TRUE} if the \code{files}'s parent, grandparent, etc is \code{prefix}.
\code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
