\alias{GtkToolButton}
\alias{gtkToolButton}
\name{GtkToolButton}
\title{GtkToolButton}
\description{A GtkToolItem subclass that displays buttons}
\section{Methods and Functions}{
\code{\link{gtkToolButtonNew}(icon.widget = NULL, label = NULL, show = TRUE)}\cr
\code{\link{gtkToolButtonNewFromStock}(stock.id, show = TRUE)}\cr
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
\code{gtkToolButton(icon.widget = NULL, label = NULL, stock.id, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkToolItem
                                       +----GtkToolButton
                                             +----GtkMenuToolButton
                                             +----GtkToggleToolButton}}
\section{Interfaces}{GtkToolButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{\code{\link{GtkToolButton}}s are \verb{GtkToolItems} containing buttons.
  
Use \code{\link{gtkToolButtonNew}} to create a new \code{\link{GtkToolButton}}. Use
\code{gtkToolButtonNewWithStock()} to create a \code{\link{GtkToolButton}}
containing a stock item.
  
The label of a \code{\link{GtkToolButton}} is determined by the properties
"label-widget", "label", and "stock-id". If "label-widget" is
non-\code{NULL}, then that widget is used as the label. Otherwise, if
"label" is non-\code{NULL}, that string is used as the label. Otherwise, if
"stock-id" is non-\code{NULL}, the label is determined by the stock
item. Otherwise, the button does not have a label.
  
The icon of a \code{\link{GtkToolButton}} is determined by the properties
"icon-widget" and "stock-id". If "icon-widget" is non-\code{NULL}, then
that widget is used as the icon. Otherwise, if "stock-id" is
non-\code{NULL}, the icon is determined by the stock item. Otherwise,
the button does not have a icon.}
\section{Structures}{\describe{\item{\verb{GtkToolButton}}{
The \code{\link{GtkToolButton}} struct contains only private. It should only be
accessed with the function described below.

}}}
\section{Convenient Construction}{\code{gtkToolButton} is the result of collapsing the constructors of \code{GtkToolButton} (\code{\link{gtkToolButtonNew}}, \code{\link{gtkToolButtonNewFromStock}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{clicked(toolbutton, user.data)}}{
This signal is emitted when the tool button is clicked with the mouse
or activated with the keyboard.

\describe{
\item{\code{toolbutton}}{the object that emitted the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the themed icon displayed on the item.
This property only has an effect if not overridden by "label",
"icon_widget" or "stock_id" properties.
  Default value: NULL  Since 2.8

}
\item{\verb{icon-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

Icon widget to display in the item.

}
\item{\verb{label} [character : *                : Read / Write]}{

Text to show in the item.  Default value: NULL

}
\item{\verb{label-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

Widget to use as the item label.

}
\item{\verb{stock-id} [character : *                : Read / Write]}{

The stock icon displayed on the item.  Default value: NULL

}
\item{\verb{use-underline} [logical : Read / Write]}{

If set, an underline in the label property indicates that the next character should be used for the mnemonic accelerator key in the overflow menu.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\verb{icon-spacing} [integer : Read / Write]}{

Spacing in pixels between the icon and label.  Allowed values: >= 0  Default value: 3

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
