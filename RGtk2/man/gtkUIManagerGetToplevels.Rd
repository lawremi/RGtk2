\alias{gtkUIManagerGetToplevels}
\name{gtkUIManagerGetToplevels}
\title{gtkUIManagerGetToplevels}
\description{Obtains a list of all toplevel widgets of the requested types.}
\usage{gtkUIManagerGetToplevels(object, types)}
\arguments{
\item{\code{object}}{[\code{\link{GtkUIManager}}]  a \code{\link{GtkUIManager}}}
\item{\code{types}}{[\code{\link{GtkUIManagerItemType}}]  specifies the types of toplevel widgets to include. Allowed
  types are \code{GTK_UI_MANAGER_MENUBAR}, \code{GTK_UI_MANAGER_TOOLBAR} and
  \code{GTK_UI_MANAGER_POPUP}.}
}
\details{  Since  2.4}
\value{[list]  a newly-allocated of all toplevel widgets of the requested 
types. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
