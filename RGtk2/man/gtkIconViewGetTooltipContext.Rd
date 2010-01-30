\alias{gtkIconViewGetTooltipContext}
\name{gtkIconViewGetTooltipContext}
\title{gtkIconViewGetTooltipContext}
\description{This function is supposed to be used in a \verb{"query-tooltip"}
signal handler for \verb{\link{GtkIconView}}.  The \code{x}, \code{y} and \code{keyboard.tip} values
which are received in the signal handler, should be passed to this
function without modification.}
\usage{gtkIconViewGetTooltipContext(object, x, y, keyboard.tip)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  an \verb{\link{GtkIconView}}}
\item{\verb{x}}{[integer]  the x coordinate (relative to widget coordinates)}
\item{\verb{y}}{[integer]  the y coordinate (relative to widget coordinates)}
\item{\verb{keyboard.tip}}{[logical]  whether this is a keyboard tooltip or not}
}
\details{The return value indicates whether there is an icon view item at the given
coordinates (\code{TRUE}) or not (\code{FALSE}) for mouse tooltips. For keyboard
tooltips the item returned will be the cursor item. When \code{TRUE}, then any of
\code{model}, \code{path} and \code{iter} which have been provided will be set to point to
that row and the corresponding model. \code{x} and \code{y} will always be converted
to be relative to \code{icon.view}'s bin_window if \code{keyboard.tooltip} is \code{FALSE}.  

  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether or not the given tooltip context points to a item}
\item{\verb{model}}{[\verb{\link{GtkTreeModel}}]  a pointer to receive a \verb{\link{GtkTreeModel}} or \code{NULL}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  a pointer to receive a \verb{\link{GtkTreePath}} or \code{NULL}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  a pointer to receive a \verb{\link{GtkTreeIter}} or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
