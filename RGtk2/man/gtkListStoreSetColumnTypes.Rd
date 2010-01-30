\alias{gtkListStoreSetColumnTypes}
\name{gtkListStoreSetColumnTypes}
\title{gtkListStoreSetColumnTypes}
\description{This function is meant primarily for \verb{GObjects} that inherit from \verb{\link{GtkListStore}},
and should only be used when constructing a new \verb{\link{GtkListStore}}.  It will not
function after a row has been added, or a method on the \verb{\link{GtkTreeModel}}
interface is called.}
\usage{gtkListStoreSetColumnTypes(object, types)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkListStore}}]  A \verb{\link{GtkListStore}}}
\item{\verb{types}}{[\verb{\link{GType}}]  An list length n of \verb{GTypes}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
