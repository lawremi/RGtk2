\alias{gtkRecentActionNew}
\name{gtkRecentActionNew}
\title{gtkRecentActionNew}
\description{Creates a new \verb{\link{GtkRecentAction}} object. To add the action to
a \verb{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkRecentActionNew(name, label, tooltip, stock.id)}
\arguments{
\item{\verb{name}}{[character]  a unique name for the action}
\item{\verb{label}}{[character]  the label displayed in menu items and on buttons, or \code{NULL}}
\item{\verb{tooltip}}{[character]  a tooltip for the action, or \code{NULL}}
\item{\verb{stock.id}}{[character]  the stock icon to display in widgets representing the
  action, or \code{NULL}}
}
\details{  Since  2.12}
\value{[\verb{\link{GtkAction}}]  the newly created \verb{\link{GtkRecentAction}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
