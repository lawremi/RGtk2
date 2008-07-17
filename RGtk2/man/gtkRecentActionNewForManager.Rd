\alias{gtkRecentActionNewForManager}
\name{gtkRecentActionNewForManager}
\title{gtkRecentActionNewForManager}
\description{Creates a new \code{\link{GtkRecentAction}} object. To add the action to
a \code{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkRecentActionNewForManager(name, label, tooltip, stock.id, manager)}
\arguments{
\item{\code{name}}{[character]  a unique name for the action}
\item{\code{label}}{[character]  the label displayed in menu items and on buttons, or \code{NULL}}
\item{\code{tooltip}}{[character]  a tooltip for the action, or \code{NULL}}
\item{\code{stock.id}}{[character]  the stock icon to display in widgets representing the
  action, or \code{NULL}}
\item{\code{manager}}{[\code{\link{GtkRecentManager}}]  a \code{\link{GtkRecentManager}}, or \code{NULL} for using the default
  \code{\link{GtkRecentManager}}}
}
\details{  Since  2.12}
\value{[\code{\link{GtkAction}}]  the newly created \code{\link{GtkRecentAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
