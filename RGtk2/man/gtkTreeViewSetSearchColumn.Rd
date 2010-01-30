\alias{gtkTreeViewSetSearchColumn}
\name{gtkTreeViewSetSearchColumn}
\title{gtkTreeViewSetSearchColumn}
\description{Sets \code{column} as the column where the interactive search code should
search in. }
\usage{gtkTreeViewSetSearchColumn(object, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{column}}{[integer]  the column of the model to search in, or -1 to disable searching}
}
\details{If the sort column is set, users can use the "start-interactive-search"
key binding to bring up search popup. The enable-search property controls
whether simply typing text will also start an interactive search.
  
Note that \code{column} refers to a column of the model.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
