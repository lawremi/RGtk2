\alias{gtkTreeSelectionGetSelected}
\name{gtkTreeSelectionGetSelected}
\title{gtkTreeSelectionGetSelected}
\description{Sets \code{iter} to the currently selected node if \code{selection} is set to
\verb{GTK_SELECTION_SINGLE} or \verb{GTK_SELECTION_BROWSE}.  \code{iter} may be NULL if you
just want to test if \code{selection} has any selected nodes.  \code{model} is filled
with the current model as a convenience.  This function will not work if you
use \code{selection} is \verb{GTK_SELECTION_MULTIPLE}.}
\usage{gtkTreeSelectionGetSelected(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTreeSelection}}]  A \verb{\link{GtkTreeSelection}}.}}
\value{
A list containing the following elements:
\item{retval}{[logical]  TRUE, if there is a selected node.}
\item{\verb{model}}{[\verb{\link{GtkTreeModel}}]  A pointer to set to the \verb{\link{GtkTreeModel}}, or NULL.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The \verb{\link{GtkTreeIter}}, or NULL.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
