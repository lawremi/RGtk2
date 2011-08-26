\alias{gtkTreeViewGetTooltipContext}
\name{gtkTreeViewGetTooltipContext}
\title{gtkTreeViewGetTooltipContext}
\description{This function is supposed to be used in a \verb{"query-tooltip"}
signal handler for \code{\link{GtkTreeView}}.  The \code{x}, \code{y} and \code{keyboard.tip} values
which are received in the signal handler, should be passed to this
function without modification.}
\usage{gtkTreeViewGetTooltipContext(object, x, y, keyboard.tip)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{x}}{the x coordinate (relative to widget coordinates)}
\item{\verb{y}}{the y coordinate (relative to widget coordinates)}
\item{\verb{keyboard.tip}}{whether this is a keyboard tooltip or not}
}
\details{The return value indicates whether there is a tree view row at the given
coordinates (\code{TRUE}) or not (\code{FALSE}) for mouse tooltips.  For keyboard
tooltips the row returned will be the cursor row.  When \code{TRUE}, then any of
\code{model}, \code{path} and \code{iter} which have been provided will be set to point to
that row and the corresponding model.  \code{x} and \code{y} will always be converted
to be relative to \code{tree.view}'s bin_window if \code{keyboard.tooltip} is \code{FALSE}.
  Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] whether or not the given tooltip context points to a row.}
\item{\verb{model}}{a pointer to receive a \code{\link{GtkTreeModel}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{path}}{a pointer to receive a \code{\link{GtkTreePath}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{iter}}{a pointer to receive a \code{\link{GtkTreeIter}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
