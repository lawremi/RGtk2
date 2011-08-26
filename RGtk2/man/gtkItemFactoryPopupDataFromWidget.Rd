\alias{gtkItemFactoryPopupDataFromWidget}
\name{gtkItemFactoryPopupDataFromWidget}
\title{gtkItemFactoryPopupDataFromWidget}
\description{
Obtains the \code{popup.data} which was passed to 
\code{\link{gtkItemFactoryPopupWithData}}. This data is available until the menu
is popped down again.
\strong{WARNING: \code{gtk_item_factory_popup_data_from_widget} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryPopupDataFromWidget(widget)}
\arguments{\item{\verb{widget}}{a widget}}
\value{[R object] \code{popup.data} associated with the item factory from
which \code{widget} was created, or \code{NULL} if \code{widget} wasn't created
by an item factory}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
