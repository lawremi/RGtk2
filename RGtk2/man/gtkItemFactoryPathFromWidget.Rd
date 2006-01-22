\alias{gtkItemFactoryPathFromWidget}
\name{gtkItemFactoryPathFromWidget}
\title{gtkItemFactoryPathFromWidget}
\description{
If \code{widget} has been created by an item factory, returns the full path
to it. (The full path of a widget is the concatenation of the factory 
path specified in \code{\link{gtkItemFactoryNew}} with the path specified in the 
\code{\link{GtkItemFactoryEntry}} from which the widget was created.)
\strong{WARNING: \code{gtk_item_factory_path_from_widget} is deprecated and should not be used in newly-written code.  
If \code{widget} has been created by an item factory, returns the full path
to it. (The full path of a widget is the concatenation of the factory 
path specified in \code{\link{gtkItemFactoryNew}} with the path specified in the 
\code{\link{GtkItemFactoryEntry}} from which the widget was created.)  }
}
\usage{gtkItemFactoryPathFromWidget(widget)}
\arguments{\item{\code{widget}}{[\code{\link{GtkWidget}}]  a widget}}
\value{[character]  the full path to \code{widget} if it has been created by an item
  factory, \code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
