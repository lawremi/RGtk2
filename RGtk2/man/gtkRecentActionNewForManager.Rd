\alias{gtkRecentActionNewForManager}
\name{gtkRecentActionNewForManager}
\title{gtkRecentActionNewForManager}
\description{Creates a new \code{\link{GtkRecentAction}} object. To add the action to
a \code{\link{GtkActionGroup}} and set the accelerator for the action,
call \code{\link{gtkActionGroupAddActionWithAccel}}.}
\usage{gtkRecentActionNewForManager(name, label, tooltip, stock.id, 
    manager)}
\arguments{
\item{\verb{name}}{a unique name for the action}
\item{\verb{label}}{the label displayed in menu items and on buttons, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tooltip}}{a tooltip for the action, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{stock.id}}{the stock icon to display in widgets representing the
action, or \code{NULL}}
\item{\verb{manager}}{a \code{\link{GtkRecentManager}}, or \code{NULL} for using the default
\code{\link{GtkRecentManager}}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.12}
\value{[\code{\link{GtkAction}}] the newly created \code{\link{GtkRecentAction}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
