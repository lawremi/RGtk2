\alias{gtkItemFactoryGetItem}
\name{gtkItemFactoryGetItem}
\title{gtkItemFactoryGetItem}
\description{
Obtains the menu item which corresponds to \code{path}. 
\strong{WARNING: \code{gtk_item_factory_get_item} is deprecated and should not be used in newly-written code.  
Obtains the menu item which corresponds to \code{path}. 
  
If the widget corresponding to \code{path} is a menu item which opens a 
submenu, then the item is returned. If you are interested in the submenu, 
use \code{\link{gtkItemFactoryGetWidget}} instead.  }
}
\usage{gtkItemFactoryGetItem(object, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{path}}{[character]  the path to the menu item}
}
\details{If the widget corresponding to \code{path} is a menu item which opens a 
submenu, then the item is returned. If you are interested in the submenu, 
use \code{\link{gtkItemFactoryGetWidget}} instead.  }
\value{[\code{\link{GtkWidget}}]  the menu item for the given path, or \code{NULL} if \code{path} doesn't
  lead to a menu item}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
