\alias{gtk-gtkcheckmenuitem}
\alias{GtkCheckMenuItem}
\alias{gtkCheckMenuItem}
\name{gtk-gtkcheckmenuitem}
\title{GtkCheckMenuItem}
\description{A menu item with a check box}
\section{Methods and Functions}{
\code{\link{gtkCheckMenuItemNew}(show = TRUE)}\cr
\code{\link{gtkCheckMenuItemNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkCheckMenuItemNewWithMnemonic}(label, show = TRUE)}\cr
\code{\link{gtkCheckMenuItemGetActive}(object)}\cr
\code{\link{gtkCheckMenuItemSetActive}(object, is.active)}\cr
\code{\link{gtkCheckMenuItemSetShowToggle}(object, always)}\cr
\code{\link{gtkCheckMenuItemToggled}(object)}\cr
\code{\link{gtkCheckMenuItemGetInconsistent}(object)}\cr
\code{\link{gtkCheckMenuItemSetInconsistent}(object, setting)}\cr
\code{\link{gtkCheckMenuItemSetDrawAsRadio}(object, draw.as.radio)}\cr
\code{\link{gtkCheckMenuItemGetDrawAsRadio}(object)}\cr
\code{gtkCheckMenuItem(label, show = TRUE)}
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
\section{Interfaces}{GtkCheckMenuItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A \code{\link{GtkCheckMenuItem}} is a menu item that maintains the state of a boolean
value in addition to a \code{\link{GtkMenuItem}}'s usual role in activating application
code.
  
A check box indicating the state of the boolean value is displayed
at the left side of the \code{\link{GtkMenuItem}}.  Activating the \code{\link{GtkMenuItem}}
toggles the value.}
\section{Structures}{\describe{\item{\verb{GtkCheckMenuItem}}{
The \code{\link{GtkCheckMenuItem}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{\verb{numeric}   active; \tab TRUE if the check box is active. \cr}

}}}
\section{Convenient Construction}{\code{gtkCheckMenuItem} is the result of collapsing the constructors of \code{GtkCheckMenuItem} (\code{\link{gtkCheckMenuItemNew}}, \code{\link{gtkCheckMenuItemNewWithLabel}}, \code{\link{gtkCheckMenuItemNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{toggled(checkmenuitem, user.data)}}{
This signal is emitted when the state of the check box is changed.
  
A signal handler can examine the \code{active}
field of the \code{\link{GtkCheckMenuItem}} struct to discover the new state.

\describe{
\item{\code{checkmenuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{active} [logical : Read / Write]}{

Whether the menu item is checked.  Default value: FALSE

}
\item{\verb{draw-as-radio} [logical : Read / Write]}{

Whether the menu item looks like a radio menu item.  Default value: FALSE

}
\item{\verb{inconsistent} [logical : Read / Write]}{

Whether to display an "inconsistent" state.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\verb{indicator-size} [integer : Read]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 13

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-gtkcheckmenuitem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
