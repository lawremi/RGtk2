\alias{gtkTreeViewSetTooltipColumn}
\name{gtkTreeViewSetTooltipColumn}
\title{gtkTreeViewSetTooltipColumn}
\description{If you only plan to have simple (text-only) tooltips on full rows, you
can use this function to have \verb{\link{GtkTreeView}} handle these automatically
for you. \code{column} should be set to the column in \code{tree.view}'s model
containing the tooltip texts, or -1 to disable this feature.}
\usage{gtkTreeViewSetTooltipColumn(object, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{column}}{[integer]  an integer, which is a valid column number for \code{tree.view}'s model}
}
\details{When enabled, \verb{"has-tooltip"} will be set to \code{TRUE} and
\code{tree.view} will connect a \verb{"query-tooltip"} signal handler.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
