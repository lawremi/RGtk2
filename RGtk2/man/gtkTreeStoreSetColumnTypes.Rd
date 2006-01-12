\alias{gtkTreeStoreSetColumnTypes}
\name{gtkTreeStoreSetColumnTypes}
\title{gtkTreeStoreSetColumnTypes}
\description{This function is meant primarily for \code{GObjects} that inherit from 
\code{\link{GtkTreeStore}}, and should only be used when constructing a new 
\code{\link{GtkTreeStore}}.  It will not function after a row has been added, 
or a method on the \code{\link{GtkTreeModel}} interface is called.}
\usage{gtkTreeStoreSetColumnTypes(object, types)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  A \code{\link{GtkTreeStore}}}
\item{\code{types}}{[\code{\link{GType}}]  An list of \code{\link{GType}} types, one for each column}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
