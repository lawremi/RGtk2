\alias{gFileInfoGetFileType}
\name{gFileInfoGetFileType}
\title{gFileInfoGetFileType}
\description{Gets a file's type (whether it is a regular file, symlink, etc). 
This is different from the file's content type, see \code{\link{gFileInfoGetContentType}}.}
\usage{gFileInfoGetFileType(object)}
\arguments{\item{\verb{object}}{a \code{\link{GFileInfo}}.}}
\value{[\code{\link{GFileType}}] a \code{\link{GFileType}} for the given file.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
