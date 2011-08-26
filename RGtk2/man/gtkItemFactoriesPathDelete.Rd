\alias{gtkItemFactoriesPathDelete}
\name{gtkItemFactoriesPathDelete}
\title{gtkItemFactoriesPathDelete}
\description{
Deletes all widgets constructed from the specified path.
\strong{WARNING: \code{gtk_item_factories_path_delete} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoriesPathDelete(ifactory.path, path)}
\arguments{
\item{\verb{ifactory.path}}{a factory path to prepend to \code{path}. May be \code{NULL} if \code{path}
starts with a factory path}
\item{\verb{path}}{a path}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
