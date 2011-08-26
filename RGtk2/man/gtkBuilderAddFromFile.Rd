\alias{gtkBuilderAddFromFile}
\name{gtkBuilderAddFromFile}
\title{gtkBuilderAddFromFile}
\description{Parses a file containing a GtkBuilder 
UI definition and merges it with the current contents of \code{builder}. }
\usage{gtkBuilderAddFromFile(object, filename, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{filename}}{the name of the file to parse}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Upon errors 0 will be returned and \code{error} will be assigned a
\code{\link{GError}} from the \verb{GTK_BUILDER_ERROR}, \verb{G_MARKUP_ERROR} or \verb{G_FILE_ERROR} 
domain.
  Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[numeric] A positive value on success, 0 if an error occurred}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
