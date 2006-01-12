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
\item{\code{name}}{[character]  A unique name for the action}
\item{\code{label}}{[character]  the label displayed in menu items and on buttons}
\item{\code{tooltip}}{[character]  a tooltip for the action}
\item{\code{stock.id}}{[character]  the stock icon to display in widgets representing the action}
}
\details{  Since  2.4}
\value{[\code{\link{GtkAction}}]  a new \code{\link{GtkAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
