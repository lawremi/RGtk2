\alias{gtkUIManagerInsertActionGroup}
\name{gtkUIManagerInsertActionGroup}
\title{gtkUIManagerInsertActionGroup}
\description{Inserts an action group into the list of action groups associated 
with \code{self}. Actions in earlier groups hide actions with the same 
name in later groups.}
\usage{gtkUIManagerInsertActionGroup(object, action.group, pos)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkUIManager}}]  a \verb{\link{GtkUIManager}} object}
\item{\verb{action.group}}{[\verb{\link{GtkActionGroup}}]  the action group to be inserted}
\item{\verb{pos}}{[integer]  the position at which the group will be inserted.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
