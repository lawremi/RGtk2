\alias{GtkItemFactory}
\alias{GtkItemFactoryEntry}
\alias{gtkItemFactory}
\alias{GtkPrintFunc}
\alias{GtkTranslateFunc}
\alias{GtkItemFactoryCallback}
\alias{GtkItemFactoryCallback1}
\alias{GtkItemFactoryCallback2}
\name{GtkItemFactory}
\title{GtkItemFactory}
\description{A factory for menus}
\section{Methods and Functions}{
\code{\link{gtkItemFactoryNew}(container.type, path, accel.group = NULL)}\cr
\code{\link{gtkItemFactoryConstruct}(object, container.type, path, accel.group)}\cr
\code{\link{gtkItemFactoryAddForeign}(accel.widget, full.path, accel.group, keyval, modifiers)}\cr
\code{\link{gtkItemFactoryFromWidget}(widget)}\cr
\code{\link{gtkItemFactoryPathFromWidget}(widget)}\cr
\code{\link{gtkItemFactoryGetItem}(object, path)}\cr
\code{\link{gtkItemFactoryGetWidget}(object, path)}\cr
\code{\link{gtkItemFactoryGetWidgetByAction}(object, action)}\cr
\code{\link{gtkItemFactoryGetItemByAction}(object, action)}\cr
\code{\link{gtkItemFactoryCreateItem}(object, entry, callback.data = NULL, callback.type)}\cr
\code{\link{gtkItemFactoryCreateItems}(object, entries, callback.data = NULL)}\cr
\code{\link{gtkItemFactoryCreateItemsAc}(object, entries, callback.data, callback.type)}\cr
\code{\link{gtkItemFactoryDeleteItem}(object, path)}\cr
\code{\link{gtkItemFactoryDeleteEntry}(object, entry)}\cr
\code{\link{gtkItemFactoryDeleteEntries}(object, entries)}\cr
\code{\link{gtkItemFactoryPopup}(object, x, y, mouse.button, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkItemFactoryPopupWithData}(object, popup.data, x, y, mouse.button, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkItemFactoryPopupData}(object)}\cr
\code{\link{gtkItemFactoryPopupDataFromWidget}(widget)}\cr
\code{\link{gtkItemFactoryFromPath}(path)}\cr
\code{\link{gtkItemFactoryCreateMenuEntries}(entries)}\cr
\code{\link{gtkItemFactoriesPathDelete}(ifactory.path, path)}\cr
\code{\link{gtkItemFactorySetTranslateFunc}(object, func, data = NULL)}\cr
\code{gtkItemFactory(container.type, path, accel.group = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkItemFactory}}
\section{Detailed Description}{As of GTK+ 2.4, \code{\link{GtkItemFactory}} has been deprecated in favour of \code{\link{GtkUIManager}}.}
\section{Structures}{\describe{
\item{\verb{GtkItemFactory}}{
\strong{WARNING: \code{GtkItemFactory} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

}
\item{\verb{GtkItemFactoryEntry}}{
\strong{WARNING: \code{GtkItemFactoryEntry} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}
\strong{\verb{GtkItemFactoryEntry} is a \link{transparent-type}.}

}
}}
\section{Convenient Construction}{\code{gtkItemFactory} is the equivalent of \code{\link{gtkItemFactoryNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkPrintFunc()}}{
\emph{undocumented
}




}
\item{\code{GtkTranslateFunc(path, func.data)}}{
The function used to translate messages in e.g. \code{\link{GtkIconFactory}}
and \code{\link{GtkActionGroup}}.

\describe{
\item{\code{path}}{The id of the message. In \code{\link{GtkItemFactory}} this will be a path
from a \code{\link{GtkItemFactoryEntry}}, in \code{\link{GtkActionGroup}}, it will be a label
or tooltip from a \code{\link{GtkActionEntry}}.}
\item{\code{func.data}}{user data passed in when registering the function}
}

\emph{Returns:} [character] the translated message

}
\item{\code{GtkItemFactoryCallback()}}{
\emph{undocumented
}




}
\item{\code{GtkItemFactoryCallback1()}}{
\emph{undocumented
}




}
\item{\code{GtkItemFactoryCallback2()}}{
\emph{undocumented
}




}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkItemFactory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
