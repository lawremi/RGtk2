\alias{gtkItemFactoryGetWidget}
\name{gtkItemFactoryGetWidget}
\title{gtkItemFactoryGetWidget}
\description{
Obtains the widget which corresponds to \code{path}. 
\strong{WARNING: \code{gtk_item_factory_get_widget} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryGetWidget(object, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{path}}{[character]  the path to the widget}
}
\details{If the widget corresponding to \code{path} is a menu item which opens a 
submenu, then the submenu is returned. If you are interested in the menu 
item, use \code{\link{gtkItemFactoryGetItem}} instead.  }
\value{[\verb{\link{GtkWidget}}]  the widget for the given path, or \code{NULL} if \code{path} doesn't lead
  to a widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
