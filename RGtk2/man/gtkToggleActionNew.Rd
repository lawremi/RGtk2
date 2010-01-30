\alias{gtkToggleActionNew}
\name{gtkToggleActionNew}
\title{gtkToggleActionNew}
\description{Creates a new \verb{\link{GtkToggleAction}} object. To add the action to
a \verb{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkToggleActionNew(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
\arguments{
\item{\verb{name}}{[character]  A unique name for the action}
\item{\verb{label}}{[character]  The label displayed in menu items and on buttons, or \code{NULL}}
\item{\verb{tooltip}}{[character]  A tooltip for the action, or \code{NULL}}
\item{\verb{stock.id}}{[character]  The stock icon to display in widgets representing the
  action, or \code{NULL}}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkToggleAction}}]  a new \verb{\link{GtkToggleAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
