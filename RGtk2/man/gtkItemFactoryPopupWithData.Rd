\alias{gtkItemFactoryPopupWithData}
\name{gtkItemFactoryPopupWithData}
\title{gtkItemFactoryPopupWithData}
\description{
Pops up the menu constructed from the item factory at (\code{x}, \code{y}). Callbacks
can access the \code{popup.data} while the menu is posted via 
\code{\link{gtkItemFactoryPopupData}} and \code{\link{gtkItemFactoryPopupDataFromWidget}}.
\strong{WARNING: \code{gtk_item_factory_popup_with_data} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryPopupWithData(object, popup.data, x, y, mouse.button, 
    time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}} of type \verb{GTK_TYPE_MENU} (see \code{\link{gtkItemFactoryNew}})}
\item{\verb{popup.data}}{data available for callbacks while the menu is posted}
\item{\verb{x}}{the x position}
\item{\verb{y}}{the y position}
\item{\verb{mouse.button}}{the mouse button which was pressed to initiate the popup}
\item{\verb{time}}{the time at which the activation event occurred}
}
\details{The \code{mouse.button} parameter should be the mouse button pressed to initiate
the menu popup. If the menu popup was initiated by something other than
a mouse button press, such as a mouse button release or a keypress,
\code{mouse.button} should be 0.
  
The \code{time.} parameter should be the time stamp of the event that
initiated the popup. If such an event is not available, use
\code{\link{gtkGetCurrentEventTime}} instead.
  
The operation of the \code{mouse.button} and the \code{time.} parameters is the same
as the \code{button} and \code{activation.time} parameters for \code{\link{gtkMenuPopup}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
