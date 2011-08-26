\alias{gtkIconViewGetSelectedItems}
\name{gtkIconViewGetSelectedItems}
\title{gtkIconViewGetSelectedItems}
\description{Creates a list of paths of all selected items. Additionally, if you are
planning on modifying the model after calling this function, you may
want to convert the returned list into a list of \code{\link{GtkTreeRowReference}}s.
To do this, you can use \code{\link{gtkTreeRowReferenceNew}}.}
\usage{gtkIconViewGetSelectedItems(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkIconView}}.}}
\details{To free the return value, use:
\preformatted{# You don't have to free anything with RGtk2...}
  Since 2.6}
\value{[list] A \verb{list} containing a \code{\link{GtkTreePath}} for each selected row. \emph{[  \acronym{element-type}   GtkTreePath][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
