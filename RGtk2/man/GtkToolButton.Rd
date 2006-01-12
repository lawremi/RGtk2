\alias{GtkToolButton}
\alias{gtkToolButton}
\name{GtkToolButton}
\title{GtkToolButton}
\description{A GtkToolItem subclass that displays buttons}
\usage{
\link{gtkToolButtonNew}(icon.widget = NULL, label = NULL, show = TRUE)
\link{gtkToolButtonNewFromStock}(stock.id)
\link{gtkToolButtonSetLabel}(object, label = NULL)
\link{gtkToolButtonGetLabel}(object)
\link{gtkToolButtonSetUseUnderline}(object, use.underline)
\link{gtkToolButtonGetUseUnderline}(object)
\link{gtkToolButtonSetStockId}(object, stock.id = NULL)
\link{gtkToolButtonGetStockId}(object)
\link{gtkToolButtonSetIconName}(object, icon.name)
\link{gtkToolButtonGetIconName}(object)
\link{gtkToolButtonSetIconWidget}(object, icon.widget = NULL)
\link{gtkToolButtonGetIconWidget}(object)
\link{gtkToolButtonSetLabelWidget}(object, label.widget = NULL)
\link{gtkToolButtonGetLabelWidget}(object)
gtkToolButton(icon.widget = NULL, label = NULL, show = TRUE)
}
\details{\code{\link{GtkToolButton}}s are \code{GtkToolItems} containing buttons.
  
Use \code{\link{gtkToolButtonNew}} to create a new \code{\link{GtkToolButton}}. Use
\code{gtkToolButtonNewWithStock()} to create a \code{\link{GtkToolButton}}
containing a stock item.
  
The label of a \code{\link{GtkToolButton}} is determined by the properties
"label_widget", "label", and "stock_id". If "label_widget" is
non-\code{NULL}, then that widget is used as the label. Otherwise, if
"label" is non-\code{NULL}, that string is used as the label. Otherwise, if
"stock_id" is non-\code{NULL}, the label is determined by the stock
item. Otherwise, the button does not have a label.
  
The icon of a \code{\link{GtkToolButton}} is determined by the properties
"icon_widget" and "stock_id". If "icon_widget" is non-\code{NULL}, then
that widget is used as the icon. Otherwise, if "stock_id" is
non-\code{NULL}, the icon is determined by the stock item. Otherwise,
the button does not have a label.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkToolItem}
                                 +----GtkToolButton
                                       +----\link{GtkMenuToolButton}
                                       +----\link{GtkToggleToolButton}}}
\section{Structures}{\describe{\item{\code{GtkToolButton}}{
The \code{\link{GtkToolButton}} struct contains only private. It should only be
accessed with the function described below.

}}}
\section{Convenient Construction}{\code{gtkToolButton} is the equivalent of \code{\link{gtkToolButtonNew}}.}
\section{Interfaces}{GtkToolButton implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{clicked(toolbutton, user.data)}}{
This signal is emitted when the tool button is clicked with the mouse
or activated with the keyboard.  

\describe{
\item{\code{toolbutton}}{[\code{\link{GtkToolButton}}]  the object that emitted the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{icon-name} [character : Read / Write]}{

The name of the themed icon displayed on the item.
This property only has an effect if not overridden by "label", 
"icon_widget" or "stock_id" properties.  

  Default value: NULL  Since  2.8 

}
\item{\code{icon-widget} [\code{\link{GtkWidget}} : Read / Write]}{

Icon widget to display in the item.

}
\item{\code{label} [character : Read / Write]}{

Text to show in the item.  Default value: NULL

}
\item{\code{label-widget} [\code{\link{GtkWidget}} : Read / Write]}{

Widget to use as the item label.

}
\item{\code{stock-id} [character : Read / Write]}{

The stock icon displayed on the item.  Default value: NULL

}
\item{\code{use-underline} [logical : Read / Write]}{

If set, an underline in the label property indicates that the next character should be used for the mnemonic accelerator key in the overflow menu.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
