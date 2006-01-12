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
\usage{
\link{gtkItemFactoryNew}(container.type, path, accel.group = NULL)
\link{gtkItemFactoryConstruct}(object, container.type, path, accel.group)
\link{gtkItemFactoryAddForeign}(accel.widget, full.path, accel.group, keyval, modifiers)
\link{gtkItemFactoryFromWidget}(widget)
\link{gtkItemFactoryPathFromWidget}(widget)
\link{gtkItemFactoryGetItem}(object, path)
\link{gtkItemFactoryGetWidget}(object, path)
\link{gtkItemFactoryGetWidgetByAction}(object, action)
\link{gtkItemFactoryGetItemByAction}(object, action)
\link{gtkItemFactoryCreateItem}(object, entry, callback.data = NULL, callback.type)
\link{gtkItemFactoryCreateItems}(object, entries, callback.data = NULL)
\link{gtkItemFactoryCreateItemsAc}(object, entries, callback.data, callback.type)
\link{gtkItemFactoryDeleteItem}(object, path)
\link{gtkItemFactoryDeleteEntry}(object, entry)
\link{gtkItemFactoryDeleteEntries}(object, entries)
\link{gtkItemFactoryPopup}(object, x, y, mouse.button, time = GDK_CURRENT_TIME)
\link{gtkItemFactoryPopupWithData}(object, popup.data, x, y, mouse.button, time = GDK_CURRENT_TIME)
\link{gtkItemFactoryPopupData}(object)
\link{gtkItemFactoryPopupDataFromWidget}(widget)
\link{gtkItemFactoryFromPath}(path)
\link{gtkItemFactoryCreateMenuEntries}(entries)
\link{gtkItemFactoriesPathDelete}(ifactory.path, path)
\link{gtkItemFactorySetTranslateFunc}(object, func, data = NULL)
gtkItemFactory(container.type, path, accel.group = NULL)
}
\details{As of GTK+ 2.4, \code{\link{GtkItemFactory}} has been deprecated in favour of \code{\link{GtkUIManager}}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----GtkItemFactory}}
\section{Structures}{\describe{
\item{\code{GtkItemFactory}}{
\strong{WARNING: \code{GtkItemFactory} is deprecated and should not be used in newly-written code.}


}
\item{\code{GtkItemFactoryEntry}}{
\strong{WARNING: \code{GtkItemFactoryEntry} is deprecated and should not be used in newly-written code.}

\strong{\code{GtkItemFactoryEntry} is a \link{transparent-type}.}

}
}}
\section{Convenient Construction}{\code{gtkItemFactory} is the equivalent of \code{\link{gtkItemFactoryNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkPrintFunc(func.data, str)}}{


\describe{
\item{\code{func.data}}{[R object] }
\item{\code{str}}{[character] }
}

}
\item{\code{GtkTranslateFunc(path, func.data)}}{
The function used to translate messages in e.g. \code{\link{GtkIconFactory}}
and \code{\link{GtkActionGroup}}. 

\describe{
\item{\code{path}}{[character] The id of the message. In \code{\link{GtkItemFactory}} this will be a path
  from a \code{\link{GtkItemFactoryEntry}}, in \code{\link{GtkActionGroup}}, it will be a label
  or tooltip from a \code{\link{GtkActionEntry}}.}
\item{\code{func.data}}{[R object] user data passed in when registering the function}
}

}
\item{\code{GtkItemFactoryCallback()}}{


\describe{\emph{undocumented
}}

}
\item{\code{GtkItemFactoryCallback1(callback.data, callback.action, widget)}}{


\describe{
\item{\code{callback.data}}{[R object] }
\item{\code{callback.action}}{[numeric] }
\item{\code{widget}}{[\code{\link{GtkWidget}}] }
}

}
\item{\code{GtkItemFactoryCallback2(widget, callback.data, callback.action)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] }
\item{\code{callback.data}}{[R object] }
\item{\code{callback.action}}{[numeric] }
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkItemFactory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
