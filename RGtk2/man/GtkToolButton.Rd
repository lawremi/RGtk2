\alias{GtkToolButton}
\alias{gtkToolButton}
\name{GtkToolButton}
\title{GtkToolButton}
\description{A GtkToolItem subclass that displays buttons}
\section{Methods and Functions}{
\code{\link{gtkToolButtonNew}(icon.widget = NULL, label = NULL, show = TRUE)}\cr
\code{\link{gtkToolButtonNewFromStock}(stock.id)}\cr
\code{\link{gtkToolButtonSetLabel}(object, label = NULL)}\cr
\code{\link{gtkToolButtonGetLabel}(object)}\cr
\code{\link{gtkToolButtonSetUseUnderline}(object, use.underline)}\cr
\code{\link{gtkToolButtonGetUseUnderline}(object)}\cr
\code{\link{gtkToolButtonSetStockId}(object, stock.id = NULL)}\cr
\code{\link{gtkToolButtonGetStockId}(object)}\cr
\code{\link{gtkToolButtonSetIconName}(object, icon.name)}\cr
\code{\link{gtkToolButtonGetIconName}(object)}\cr
\code{\link{gtkToolButtonSetIconWidget}(object, icon.widget = NULL)}\cr
\code{\link{gtkToolButtonGetIconWidget}(object)}\cr
\code{\link{gtkToolButtonSetLabelWidget}(object, label.widget = NULL)}\cr
\code{\link{gtkToolButtonGetLabelWidget}(object)}\cr
\code{gtkToolButton(icon.widget = NULL, label = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkToolItem}
                                       +----GtkToolButton
                                             +----\link{GtkMenuToolButton}
                                             +----\link{GtkToggleToolButton}}}
\section{Interfaces}{GtkToolButton implements
 AtkImplementorIface.}
\section{Detailed Description}{\code{\link{GtkToolButton}}s are \code{GtkToolItems} containing buttons.
  
Use \code{\link{gtkToolButtonNew}} to create a new \code{\link{GtkToolButton}}. Use
\code{gtkToolButtonNewWithStock()} to create a \code{\link{GtkToolButton}}
containing a stock item.
  
The label of a \code{\link{GtkToolButton}} is determined by the properties
"label\_widget", "label", and "stock\_id". If "label\_widget" is
non-\code{NULL}, then that widget is used as the label. Otherwise, if
"label" is non-\code{NULL}, that string is used as the label. Otherwise, if
"stock\_id" is non-\code{NULL}, the label is determined by the stock
item. Otherwise, the button does not have a label.
  
The icon of a \code{\link{GtkToolButton}} is determined by the properties
"icon\_widget" and "stock\_id". If "icon\_widget" is non-\code{NULL}, then
that widget is used as the icon. Otherwise, if "stock\_id" is
non-\code{NULL}, the icon is determined by the stock item. Otherwise,
the button does not have a label.}
\section{Structures}{\describe{\item{\code{GtkToolButton}}{
The \code{\link{GtkToolButton}} struct contains only private. It should only be
accessed with the function described below.

}}}
\section{Convenient Construction}{\code{gtkToolButton} is the equivalent of \code{\link{gtkToolButtonNew}}.}
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
"icon\_widget" or "stock\_id" properties.  

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
\section{Style Properties}{\describe{\item{\code{icon-spacing} [integer : Read / Write]}{

Spacing in pixels between the icon and label.  Allowed values: >= 0  Default value: 0

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
