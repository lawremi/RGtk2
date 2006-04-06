\alias{GtkRadioToolButton}
\alias{gtkRadioToolButton}
\name{GtkRadioToolButton}
\title{GtkRadioToolButton}
\description{A toolbar item that contains a radio button}
\section{Methods and Functions}{
\code{\link{gtkRadioToolButtonNew}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioToolButtonNewFromStock}(group = NULL, stock.id, show = TRUE)}\cr
\code{\link{gtkRadioToolButtonNewFromWidget}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioToolButtonNewWithStockFromWidget}(group = NULL, stock.id, show = TRUE)}\cr
\code{\link{gtkRadioToolButtonGetGroup}(object)}\cr
\code{\link{gtkRadioToolButtonSetGroup}(object, group)}\cr
\code{gtkRadioToolButton(group = NULL, stock.id, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkToolItem}
                                 +----\link{GtkToolButton}
                                       +----\link{GtkToggleToolButton}
                                             +----GtkRadioToolButton}}
\section{Interfaces}{GtkRadioToolButton implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkRadioToolButton}} is a \code{\link{GtkToolItem}} that contains a radio button,
that is, a button that is part of a group of toggle buttons where only
one button can be active at a time.
  
Use \code{\link{gtkRadioToolButtonNew}} to create a new
\code{\link{GtkRadioToolButton}}. use \code{\link{gtkRadioToolButtonNewFromWidget}} to
create a new \code{\link{GtkRadioToolButton}} that is part of the same group as an
existing \code{\link{GtkRadioToolButton}}. Use
\code{\link{gtkRadioToolButtonNewFromStock}} or
\code{gtk\Radio\Tool\Button\New\From\Widget\With\Stock()} to create a new
\code{GtkRAdioToolButton} containing a stock item.}
\section{Structures}{\describe{\item{\code{GtkRadioToolButton}}{
  The \code{\link{GtkRadioToolButton}} contains only private data and should only
  be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkRadioToolButton} is the result of collapsing the constructors of \code{GtkRadioToolButton} (\code{\link{gtkRadioToolButtonNew}}, \code{\link{gtkRadioToolButtonNewFromStock}}, \code{\link{gtkRadioToolButtonNewFromWidget}}, \code{\link{gtkRadioToolButtonNewWithStockFromWidget}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{\item{\code{group} [\code{\link{GtkRadioToolButton}} : Write]}{

Sets a new group for a radio tool button.  

  Since  2.4

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRadioToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
