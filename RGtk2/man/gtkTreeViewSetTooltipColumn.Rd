\alias{gtkTreeViewSetTooltipColumn}
\name{gtkTreeViewSetTooltipColumn}
\title{gtkTreeViewSetTooltipColumn}
\description{If you only plan to have simple (text-only) tooltips on full rows, you
can use this function to have \code{\link{GtkTreeView}} handle these automatically
for you. \code{column} should be set to the column in \code{tree.view}'s model
containing the tooltip texts, or -1 to disable this feature.}
\usage{gtkTreeViewSetTooltipColumn(object, column)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{column}}{an integer, which is a valid column number for \code{tree.view}'s model}
}
\details{When enabled, \verb{"has-tooltip"} will be set to \code{TRUE} and
\code{tree.view} will connect a \verb{"query-tooltip"} signal handler.
  
Note that the signal handler sets the text with \code{\link{gtkTooltipSetMarkup}},
so &, <, etc have to be escaped in the text.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
