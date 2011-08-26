\alias{gtkActionNew}
\name{gtkActionNew}
\title{gtkActionNew}
\description{Creates a new \code{\link{GtkAction}} object. To add the action to a
\code{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.
See  for information on allowed action
names.}
\usage{gtkActionNew(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
\arguments{
\item{\verb{name}}{A unique name for the action}
\item{\verb{label}}{the label displayed in menu items and on buttons, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tooltip}}{a tooltip for the action, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{stock.id}}{the stock icon to display in widgets representing the
action, or \code{NULL}}
}
\details{Since 2.4}
\value{[\code{\link{GtkAction}}] a new \code{\link{GtkAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
