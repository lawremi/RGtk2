\alias{gtkTreeViewGetSearchEntry}
\name{gtkTreeViewGetSearchEntry}
\title{gtkTreeViewGetSearchEntry}
\description{Returns the \code{\link{GtkEntry}} which is currently in use as interactive search
entry for \code{tree.view}.  In case the built-in entry is being used, \code{NULL}
will be returned.}
\usage{gtkTreeViewGetSearchEntry(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeView}}}}
\details{Since 2.10}
\value{[\code{\link{GtkEntry}}] the entry currently in use as search entry.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
