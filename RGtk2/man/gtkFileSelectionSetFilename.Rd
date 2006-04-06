\alias{gtkFileSelectionSetFilename}
\name{gtkFileSelectionSetFilename}
\title{gtkFileSelectionSetFilename}
\description{Sets a default path for the file requestor. If \code{filename} includes a
directory path, then the requestor will open with that path as its
current working directory.}
\usage{gtkFileSelectionSetFilename(object, filename)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileSelection}}]  a \code{\link{GtkFileSelection}}.}
\item{\code{filename}}{[character]   a string to set as the default file name.}
}
\details{This has the consequence that in order to open the requestor with a 
working directory and an empty filename, \code{filename} must have a trailing
directory separator.
  
The encoding of \code{filename} is preferred GLib file name encoding, which
may not be UTF-8. See \code{g\Filename\From\Utf8()}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
