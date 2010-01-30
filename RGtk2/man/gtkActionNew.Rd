\alias{gtkActionNew}
\name{gtkActionNew}
\title{gtkActionNew}
\description{Creates a new \verb{\link{GtkAction}} object. To add the action to a
\verb{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.
See  for information on allowed action
names.}
\usage{gtkActionNew(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
\arguments{
\item{\verb{name}}{[character]  A unique name for the action}
\item{\verb{label}}{[character]  the label displayed in menu items and on buttons, or \code{NULL}}
\item{\verb{tooltip}}{[character]  a tooltip for the action, or \code{NULL}}
\item{\verb{stock.id}}{[character]  the stock icon to display in widgets representing the
  action, or \code{NULL}}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkAction}}]  a new \verb{\link{GtkAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
