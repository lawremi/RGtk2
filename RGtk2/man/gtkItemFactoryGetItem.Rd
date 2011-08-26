\alias{gtkItemFactoryGetItem}
\name{gtkItemFactoryGetItem}
\title{gtkItemFactoryGetItem}
\description{
Obtains the menu item which corresponds to \code{path}. 
\strong{WARNING: \code{gtk_item_factory_get_item} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryGetItem(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}}}
\item{\verb{path}}{the path to the menu item}
}
\details{If the widget corresponding to \code{path} is a menu item which opens a 
submenu, then the item is returned. If you are interested in the submenu, 
use \code{\link{gtkItemFactoryGetWidget}} instead.}
\value{[\code{\link{GtkWidget}}] the menu item for the given path, or \code{NULL} if \code{path} doesn't
lead to a menu item. \emph{[  \acronym{allow-none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
