\alias{gtkTreeStoreSetColumnTypes}
\name{gtkTreeStoreSetColumnTypes}
\title{gtkTreeStoreSetColumnTypes}
\description{This function is meant primarily for \verb{GObjects} that inherit from 
\verb{\link{GtkTreeStore}}, and should only be used when constructing a new 
\verb{\link{GtkTreeStore}}.  It will not function after a row has been added, 
or a method on the \verb{\link{GtkTreeModel}} interface is called.}
\usage{gtkTreeStoreSetColumnTypes(object, types)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{types}}{[\verb{\link{GType}}]  An list of \verb{\link{GType}} types, one for each column}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
