\alias{GtkRadioMenuItem}
\alias{gtkRadioMenuItem}
\name{GtkRadioMenuItem}
\title{GtkRadioMenuItem}
\description{A choice from multiple check menu items}
\section{Methods and Functions}{
\code{\link{gtkRadioMenuItemNew}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemNewWithLabel}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemNewWithMnemonic}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemNewFromWidget}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemNewWithLabelFromWidget}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemNewWithMnemonicFromWidget}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioMenuItemSetGroup}(object, group)}\cr
\code{\link{gtkRadioMenuItemGetGroup}(object)}\cr
\code{gtkRadioMenuItem(group = NULL, label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkItem
                                       +----GtkMenuItem
                                             +----GtkCheckMenuItem
                                                   +----GtkRadioMenuItem}}
\section{Interfaces}{GtkRadioMenuItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A radio menu item is a check menu item that belongs to a group. At each
instant exactly one of the radio menu items from a group is selected.
  
The group list does not need to be freed, as each \code{\link{GtkRadioMenuItem}} will
remove itself and its list item when it is destroyed.
  
The correct way to create a group of radio menu items is approximatively
this:
  
 \emph{How to create a group of radio menu items.}
\preformatted{
group <- NULL
for (i in 1:5) {
  item <- gtkRadioMenuItem(group, "This is an example")
  group <- item$getGroup()
  if (i == 1)
    item$setActive(TRUE)
}

}}
\section{Structures}{\describe{\item{\verb{GtkRadioMenuItem}}{
The structure contains only private data that must be accessed through
the interface functions.

}}}
\section{Convenient Construction}{\code{gtkRadioMenuItem} is the result of collapsing the constructors of \code{GtkRadioMenuItem} (\code{\link{gtkRadioMenuItemNew}}, \code{\link{gtkRadioMenuItemNewWithLabel}}, \code{\link{gtkRadioMenuItemNewWithMnemonic}}, \code{\link{gtkRadioMenuItemNewFromWidget}}, \code{\link{gtkRadioMenuItemNewWithMnemonicFromWidget}}, \code{\link{gtkRadioMenuItemNewWithLabelFromWidget}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{group-changed(radiomenuitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{radiomenuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{group} [\code{\link{GtkRadioMenuItem}} : *     : Write]}{

The radio menu item whose group this widget belongs to.
  Since 2.8

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRadioMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
