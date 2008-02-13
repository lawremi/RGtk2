\alias{gtkPaperSizeNewFromKeyFile}
\name{gtkPaperSizeNewFromKeyFile}
\title{gtkPaperSizeNewFromKeyFile}
\description{Reads a paper size from the group \code{group.name} in the key file
\code{key.file}.}
\usage{gtkPaperSizeNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\code{key.file}}{[GKeyFile]  the \code{GKeyFile} to retrieve the papersize from}
\item{\code{group.name}}{[character]  the name ofthe group in the key file to read,
    or \code{NULL} to read the first group}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkPaperSize}}]  a new \code{\link{GtkPaperSize}} object with the restored
         paper size, or \code{NULL} if an error occurred.}
\item{\code{error}}{[\code{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
