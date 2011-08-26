\alias{gtkItemFactoryNew}
\name{gtkItemFactoryNew}
\title{gtkItemFactoryNew}
\description{
Creates a new \code{\link{GtkItemFactory}}.
\strong{WARNING: \code{gtk_item_factory_new} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryNew(container.type, path, accel.group = NULL)}
\arguments{
\item{\verb{container.type}}{the kind of menu to create; can be
\verb{GTK_TYPE_MENU_BAR}, \verb{GTK_TYPE_MENU} or \verb{GTK_TYPE_OPTION_MENU}}
\item{\verb{path}}{the factory path of the new item factory, a string of the form
\code{"<name>"}}
\item{\verb{accel.group}}{a \code{\link{GtkAccelGroup}} to which the accelerators for the
menu items will be added, or \code{NULL} to create a new one. \emph{[  \acronym{allow-none}  ]}}
}
\details{Beware that the returned object does not have a floating reference.}
\value{[\code{\link{GtkItemFactory}}] a new \code{\link{GtkItemFactory}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
