\alias{gtkItemFactoryPopupData}
\name{gtkItemFactoryPopupData}
\title{gtkItemFactoryPopupData}
\description{
Obtains the \code{popup.data} which was passed to 
\code{\link{gtkItemFactoryPopupWithData}}. This data is available until the menu
is popped down again.
\strong{WARNING: \code{gtk_item_factory_popup_data} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryPopupData(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkItemFactory}}}}
\value{[R object] \code{popup.data} associated with \code{ifactory}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
