\alias{gtkBuilderAddFromString}
\name{gtkBuilderAddFromString}
\title{gtkBuilderAddFromString}
\description{Parses a string containing a GtkBuilder 
UI definition and merges it with the current contents of \code{builder}. }
\usage{gtkBuilderAddFromString(object, buffer, length, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{buffer}}{the string to parse}
\item{\verb{length}}{the length of \code{buffer} (may be -1 if \code{buffer} is nul-terminated)}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Upon errors 0 will be returned and \code{error} will be assigned a
\code{\link{GError}} from the \verb{GTK_BUILDER_ERROR} or \verb{G_MARKUP_ERROR} domain.
  Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[numeric] A positive value on success, 0 if an error occurred}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
