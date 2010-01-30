\alias{gtkIconViewSetTooltipColumn}
\name{gtkIconViewSetTooltipColumn}
\title{gtkIconViewSetTooltipColumn}
\description{\code{column}: an integer, which is a valid column number for \code{icon.view}'s model}
\usage{gtkIconViewSetTooltipColumn(object, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  a \verb{\link{GtkIconView}}}
\item{\verb{column}}{[integer] }
}
\details{If you only plan to have simple (text-only) tooltips on full items, you
can use this function to have \verb{\link{GtkIconView}} handle these automatically
for you. \code{column} should be set to the column in \code{icon.view}'s model
containing the tooltip texts, or -1 to disable this feature.
  
When enabled, \verb{"has-tooltip"} will be set to \code{TRUE} and
\code{icon.view} will connect a \verb{"query-tooltip"} signal handler.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
