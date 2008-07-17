\alias{gtkRadioActionNew}
\name{gtkRadioActionNew}
\title{gtkRadioActionNew}
\description{Creates a new \code{\link{GtkRadioAction}} object. To add the action to
a \code{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkRadioActionNew(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)}
\arguments{
\item{\code{name}}{[character]  A unique name for the action}
\item{\code{label}}{[character]  The label displayed in menu items and on buttons, or \code{NULL}}
\item{\code{tooltip}}{[character]  A tooltip for this action, or \code{NULL}}
\item{\code{stock.id}}{[character]  The stock icon to display in widgets representing this
  action, or \code{NULL}}
\item{\code{value}}{[integer]  The value which \code{\link{gtkRadioActionGetCurrentValue}} should
  return if this action is selected.}
}
\details{  Since  2.4}
\value{[\code{\link{GtkRadioAction}}]  a new \code{\link{GtkRadioAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
