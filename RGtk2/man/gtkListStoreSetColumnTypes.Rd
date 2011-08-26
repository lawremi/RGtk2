\alias{gtkListStoreSetColumnTypes}
\name{gtkListStoreSetColumnTypes}
\title{gtkListStoreSetColumnTypes}
\description{This function is meant primarily for \verb{GObjects} that inherit from \code{\link{GtkListStore}},
and should only be used when constructing a new \code{\link{GtkListStore}}.  It will not
function after a row has been added, or a method on the \code{\link{GtkTreeModel}}
interface is called.}
\usage{gtkListStoreSetColumnTypes(object, types)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{types}}{An list length n of \verb{GTypes}. \emph{[  \acronym{array}   length=n_columns]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
