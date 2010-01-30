\alias{gtkTreeViewSetSearchEqualFunc}
\name{gtkTreeViewSetSearchEqualFunc}
\title{gtkTreeViewSetSearchEqualFunc}
\description{Sets the compare function for the interactive search capabilities; note
that somewhat like \code{strcmp()} returning 0 for equality
\verb{\link{GtkTreeViewSearchEqualFunc}} returns \code{FALSE} on matches.}
\usage{gtkTreeViewSetSearchEqualFunc(object, search.equal.func, search.user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{search.equal.func}}{[\verb{\link{GtkTreeViewSearchEqualFunc}}]  the compare function to use during the search}
\item{\verb{search.user.data}}{[R object]  user data to pass to \code{search.equal.func}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
