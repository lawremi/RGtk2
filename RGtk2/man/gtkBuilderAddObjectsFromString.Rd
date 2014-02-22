\alias{gtkBuilderAddObjectsFromString}
\name{gtkBuilderAddObjectsFromString}
\title{gtkBuilderAddObjectsFromString}
\description{Parses a string containing a GtkBuilder 
UI definition building only the requested objects and merges
them with the current contents of \code{builder}. }
\usage{gtkBuilderAddObjectsFromString(object, buffer, length, object.ids, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{buffer}}{the string to parse}
\item{\verb{length}}{the length of \code{buffer} (may be -1 if \code{buffer} is nul-terminated)}
\item{\verb{object.ids}}{array of objects to build}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Upon errors 0 will be returned and \code{error} will be assigned a
\code{\link{GError}} from the \verb{GTK_BUILDER_ERROR} or \verb{G_MARKUP_ERROR} domain.
  \strong{PLEASE NOTE:} If you are adding an object that depends on an object that is not 
its child (for instance a \code{\link{GtkTreeView}} that depends on its
\code{\link{GtkTreeModel}}), you have to explicitely list all of them in \code{object.ids}.   Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[numeric] A positive value on success, 0 if an error occurred}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\note{If you are adding an object that depends on an object that is not 
its child (for instance a \code{\link{GtkTreeView}} that depends on its
\code{\link{GtkTreeModel}}), you have to explicitely list all of them in \code{object.ids}. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
