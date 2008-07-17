\alias{gtkIconViewGetTooltipContext}
\name{gtkIconViewGetTooltipContext}
\title{gtkIconViewGetTooltipContext}
\description{This function is supposed to be used in a \code{"query-tooltip"}
signal handler for \code{\link{GtkIconView}}.  The \code{x}, \code{y} and \code{keyboard.tip} values
which are received in the signal handler, should be passed to this
function without modification.}
\usage{gtkIconViewGetTooltipContext(object, x, y, keyboard.tip)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  an \code{\link{GtkIconView}}}
\item{\code{x}}{[integer]  the x coordinate (relative to widget coordinates)}
\item{\code{y}}{[integer]  the y coordinate (relative to widget coordinates)}
\item{\code{keyboard.tip}}{[logical]  whether this is a keyboard tooltip or not}
}
\details{The return value indicates whether there is an icon view item at the given
coordinates (\code{TRUE}) or not (\code{FALSE}) for mouse tooltips. For keyboard
tooltips the item returned will be the cursor item. When \code{TRUE}, then any of
\code{model}, \code{path} and \code{iter} which have been provided will be set to point to
that row and the corresponding model. \code{x} and \code{y} will always be converted
to be relative to \code{icon.view}'s bin\_window if \code{keyboard.tooltip} is \code{FALSE}.  

  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether or not the given tooltip context points to a item}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  a pointer to receive a \code{\link{GtkTreeModel}} or \code{NULL}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a pointer to receive a \code{\link{GtkTreePath}} or \code{NULL}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  a pointer to receive a \code{\link{GtkTreeIter}} or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
