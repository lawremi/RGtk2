\alias{gtkRadioActionNew}
\name{gtkRadioActionNew}
\title{gtkRadioActionNew}
\description{Creates a new \verb{\link{GtkRadioAction}} object. To add the action to
a \verb{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkRadioActionNew(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)}
\arguments{
\item{\verb{name}}{[character]  A unique name for the action}
\item{\verb{label}}{[character]  The label displayed in menu items and on buttons, or \code{NULL}}
\item{\verb{tooltip}}{[character]  A tooltip for this action, or \code{NULL}}
\item{\verb{stock.id}}{[character]  The stock icon to display in widgets representing this
  action, or \code{NULL}}
\item{\verb{value}}{[integer]  The value which \code{\link{gtkRadioActionGetCurrentValue}} should
  return if this action is selected.}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkRadioAction}}]  a new \verb{\link{GtkRadioAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
