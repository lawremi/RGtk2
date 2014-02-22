\alias{gtkTreeModelGet}
\name{gtkTreeModelGet}
\title{gtkTreeModelGet}
\description{Gets the value of one or more cells in the row referenced by \code{iter}.
The variable argument list should contain integer column numbers,
each column number followed by a place to store the value being
retrieved.  The list is terminated by a -1. For example, to get a
value from column 0 with type \code{G_TYPE_STRING}, you would
write: \code{gtk_tree_model_get (model, iter, 0, &place_string_here, -1)},
where \code{place_string_here} is a \verb{character} to be 
filled with the string.
If appropriate,}
\usage{gtkTreeModelGet(object, iter, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeModel}}}
\item{\verb{iter}}{a row in \code{tree.model}}
\item{\verb{...}}{\emph{undocumented
}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
