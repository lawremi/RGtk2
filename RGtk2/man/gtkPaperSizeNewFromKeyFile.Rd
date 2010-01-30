\alias{gtkPaperSizeNewFromKeyFile}
\name{gtkPaperSizeNewFromKeyFile}
\title{gtkPaperSizeNewFromKeyFile}
\description{Reads a paper size from the group \code{group.name} in the key file
\code{key.file}.}
\usage{gtkPaperSizeNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{key.file}}{[GKeyFile]  the \verb{GKeyFile} to retrieve the papersize from}
\item{\verb{group.name}}{[character]  the name ofthe group in the key file to read,
    or \code{NULL} to read the first group}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GtkPaperSize}}]  a new \verb{\link{GtkPaperSize}} object with the restored
         paper size, or \code{NULL} if an error occurred.}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
