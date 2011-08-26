\alias{gtkUIManagerGetToplevels}
\name{gtkUIManagerGetToplevels}
\title{gtkUIManagerGetToplevels}
\description{Obtains a list of all toplevel widgets of the requested types.}
\usage{gtkUIManagerGetToplevels(object, types)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkUIManager}}}
\item{\verb{types}}{specifies the types of toplevel widgets to include. Allowed
types are \verb{GTK_UI_MANAGER_MENUBAR}, \verb{GTK_UI_MANAGER_TOOLBAR} and
\verb{GTK_UI_MANAGER_POPUP}.}
}
\details{Since 2.4}
\value{[list] a newly-allocated \verb{list} of
all toplevel widgets of the requested types. \emph{[  \acronym{element-type}   GtkWidget][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
