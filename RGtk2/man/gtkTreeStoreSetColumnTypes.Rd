\alias{gtkTreeStoreSetColumnTypes}
\name{gtkTreeStoreSetColumnTypes}
\title{gtkTreeStoreSetColumnTypes}
\description{This function is meant primarily for \verb{GObjects} that inherit from 
\code{\link{GtkTreeStore}}, and should only be used when constructing a new 
\code{\link{GtkTreeStore}}.  It will not function after a row has been added, 
or a method on the \code{\link{GtkTreeModel}} interface is called.}
\usage{gtkTreeStoreSetColumnTypes(object, types)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}}
\item{\verb{types}}{An list of \code{\link{GType}} types, one for each column. \emph{[  \acronym{array}   length=n_columns]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
