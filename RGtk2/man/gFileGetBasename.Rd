\alias{gFileGetBasename}
\name{gFileGetBasename}
\title{gFileGetBasename}
\description{Gets the base name (the last component of the path) for a given \code{\link{GFile}}.}
\usage{gFileGetBasename(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{If called for the top level of a system (such as the filesystem root
or a uri like sftp://host/) it will return a single directory separator
(and on Windows, possibly a drive letter).
  
The base name is a byte string (*not* UTF-8). It has no defined encoding
or rules other than it may not contain zero bytes.  If you want to use
filenames in a user interface you should use the display name that you
can get by requesting the \code{G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME}
attribute with \code{\link{gFileQueryInfo}}.
  
This call does no blocking i/o.}
\value{[char] string containing the \code{\link{GFile}}'s base name, or \code{NULL}
if given \code{\link{GFile}} is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
