\alias{gFileGetChildForDisplayName}
\name{gFileGetChildForDisplayName}
\title{gFileGetChildForDisplayName}
\description{Gets the child of \code{file} for a given \code{display.name} (i.e. a UTF8
version of the name). If this function fails, it returns \code{NULL} and \code{error} will be 
set. This is very useful when constructing a GFile for a new file
and the user entered the filename in the user interface, for instance
when you select a directory and type a filename in the file selector.}
\usage{gFileGetChildForDisplayName(object, display.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{display.name}}{string to a possible child.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This call does no blocking i/o.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFile}}] a \code{\link{GFile}} to the specified child, or
\code{NULL} if the display name couldn't be converted.}
\item{\verb{error}}{\code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
