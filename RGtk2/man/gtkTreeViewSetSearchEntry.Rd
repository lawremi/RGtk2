\alias{gtkTreeViewSetSearchEntry}
\name{gtkTreeViewSetSearchEntry}
\title{gtkTreeViewSetSearchEntry}
\description{Sets the entry which the interactive search code will use for this
\code{tree.view}.  This is useful when you want to provide a search entry
in our interface at all time at a fixed position.  Passing \code{NULL} for
\code{entry} will make the interactive search code use the built-in popup
entry again.}
\usage{gtkTreeViewSetSearchEntry(object, entry = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{entry}}{[\verb{\link{GtkEntry}}]  the entry the interactive search code of \code{tree.view} should use or \code{NULL}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
