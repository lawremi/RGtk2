\alias{gtkTreeViewSetEnableSearch}
\name{gtkTreeViewSetEnableSearch}
\title{gtkTreeViewSetEnableSearch}
\description{If \code{enable.search} is set, then the user can type in text to search through
the tree interactively (this is sometimes called "typeahead find").}
\usage{gtkTreeViewSetEnableSearch(object, enable.search)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{enable.search}}{\code{TRUE}, if the user can search interactively}
}
\details{Note that even if this is \code{FALSE}, the user can still initiate a search 
using the "start-interactive-search" key binding.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
