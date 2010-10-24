\alias{gtkRecentManagerAddFull}
\name{gtkRecentManagerAddFull}
\title{gtkRecentManagerAddFull}
\description{Adds a new resource, pointed by \code{uri}, into the recently used
resources list, using the metadata specified inside the \code{\link{GtkRecentData}}
structure passed in \code{recent.data}.}
\usage{gtkRecentManagerAddFull(object, uri, recent.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentManager}}}
\item{\verb{uri}}{a valid URI}
\item{\verb{recent.data}}{metadata of the resource}
}
\details{The passed URI will be used to identify this resource inside the
list.
  
In order to register the new recently used resource, metadata about
the resource must be passed as well as the URI; the metadata is
stored in a \code{\link{GtkRecentData}} structure, which must contain the MIME
type of the resource pointed by the URI; the name of the application
that is registering the item, and a command line to be used when
launching the item.
  
Optionally, a \code{\link{GtkRecentData}} structure might contain a UTF-8 string
to be used when viewing the item instead of the last component of the
URI; a short description of the item; whether the item should be
considered private - that is, should be displayed only by the
applications that have registered it.
  Since 2.10}
\value{[logical] \code{TRUE} if the new item was successfully added to the
recently used resources list, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
