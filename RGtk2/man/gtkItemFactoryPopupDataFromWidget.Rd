\alias{gtkItemFactoryPopupDataFromWidget}
\name{gtkItemFactoryPopupDataFromWidget}
\title{gtkItemFactoryPopupDataFromWidget}
\description{
Obtains the \code{popup.data} which was passed to 
\code{\link{gtkItemFactoryPopupWithData}}. This data is available until the menu
is popped down again.
\strong{WARNING: \code{gtk_item_factory_popup_data_from_widget} is deprecated and should not be used in newly-written code.}
}
\usage{gtkItemFactoryPopupDataFromWidget(widget)}
\arguments{\item{\code{widget}}{[\code{\link{GtkWidget}}]  a widget}}
\value{[R object]  \code{popup.data} associated with the item factory from
  which \code{widget} was created, or \code{NULL} if \code{widget} wasn't created
  by an item factory}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
