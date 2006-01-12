\alias{gtkListStoreSetColumnTypes}
\name{gtkListStoreSetColumnTypes}
\title{gtkListStoreSetColumnTypes}
\description{This function is meant primarily for \code{GObjects} that inherit from \code{\link{GtkListStore}},
and should only be used when constructing a new \code{\link{GtkListStore}}.  It will not
function after a row has been added, or a method on the \code{\link{GtkTreeModel}}
interface is called.}
\usage{gtkListStoreSetColumnTypes(object, types)}
\arguments{
\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}
\item{\code{types}}{[\code{\link{GType}}]  An list length n of \code{GTypes}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
