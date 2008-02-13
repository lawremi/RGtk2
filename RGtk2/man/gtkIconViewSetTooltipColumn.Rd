\alias{gtkIconViewSetTooltipColumn}
\name{gtkIconViewSetTooltipColumn}
\title{gtkIconViewSetTooltipColumn}
\description{\code{column}: an integer, which is a valid column number for \code{icon.view}'s model}
\usage{gtkIconViewSetTooltipColumn(object, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  a \code{\link{GtkIconView}}}
\item{\code{column}}{[integer] }
}
\details{If you only plan to have simple (text-only) tooltips on full items, you
can use this function to have \code{\link{GtkIconView}} handle these automatically
for you. \code{column} should be set to the column in \code{icon.view}'s model
containing the tooltip texts, or -1 to disable this feature.
  
When enabled, \code{::has-tooltip} will be set to \code{TRUE} and
\code{icon.view} will connect a \code{::query-tooltip} signal handler.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
