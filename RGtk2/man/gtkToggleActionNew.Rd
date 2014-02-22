\alias{gtkToggleActionNew}
\name{gtkToggleActionNew}
\title{gtkToggleActionNew}
\description{Creates a new \code{\link{GtkToggleAction}} object. To add the action to
a \code{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkToggleActionNew(name = NULL, label = NULL, tooltip = NULL, 
    stock.id = NULL)}
\arguments{
\item{\verb{name}}{A unique name for the action}
\item{\verb{label}}{The label displayed in menu items and on buttons, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tooltip}}{A tooltip for the action, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{stock.id}}{The stock icon to display in widgets representing the
action, or \code{NULL}}
}
\details{Since 2.4}
\value{[\code{\link{GtkToggleAction}}] a new \code{\link{GtkToggleAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
