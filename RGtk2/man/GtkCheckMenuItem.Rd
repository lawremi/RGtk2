\alias{GtkCheckMenuItem}
\alias{gtkCheckMenuItem}
\name{GtkCheckMenuItem}
\title{GtkCheckMenuItem}
\description{A menu item with a check box}
\usage{gtkCheckMenuItem(label, show = TRUE)}
\section{Methods and Functions}{
\link{gtkCheckMenuItemNew}(show = TRUE)
\link{gtkCheckMenuItemNewWithLabel}(label, show = TRUE)
\link{gtkCheckMenuItemNewWithMnemonic}(label, show = TRUE)
\link{gtkCheckMenuItemGetActive}(object)
\link{gtkCheckMenuItemSetActive}(object, is.active)
\link{gtkCheckMenuItemSetShowToggle}(object, always)
\link{gtkCheckMenuItemToggled}(object)
\link{gtkCheckMenuItemGetInconsistent}(object)
\link{gtkCheckMenuItemSetInconsistent}(object, setting)
\link{gtkCheckMenuItemSetDrawAsRadio}(object, draw.as.radio)
\link{gtkCheckMenuItemGetDrawAsRadio}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkItem}
                                 +----\link{GtkMenuItem}
                                       +----GtkCheckMenuItem
                                             +----\link{GtkRadioMenuItem}}}
\section{Interfaces}{GtkCheckMenuItem implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkCheckMenuItem}} is a menu item that maintains the state of a boolean 
value in addition to a \code{\link{GtkMenuItem}}'s usual role in activating application
code.
  
A check box indicating the state of the boolean value is displayed
at the left side of the \code{\link{GtkMenuItem}}.  Activating the \code{\link{GtkMenuItem}} 
toggles the value.}
\section{Structures}{\describe{\item{\code{GtkCheckMenuItem}}{
The \code{\link{GtkCheckMenuItem}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{\code{numeric}   active; \tab TRUE if the check box is active. \cr}

}}}
\section{Convenient Construction}{\code{gtkCheckMenuItem} is the result of collapsing the constructors of \code{GtkCheckMenuItem} (\code{\link{gtkCheckMenuItemNew}}, \code{\link{gtkCheckMenuItemNewWithLabel}}, \code{\link{gtkCheckMenuItemNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{toggled(checkmenuitem, user.data)}}{
This signal is emitted when the state of the check box is changed.
  
A signal handler can examine the \code{active} 
field of the \code{\link{GtkCheckMenuItem}} struct to discover the new state.

\describe{
\item{\code{checkmenuitem}}{[\code{\link{GtkCheckMenuItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{active} [logical : Read / Write]}{

Whether the menu item is checked.  Default value: FALSE

}
\item{\code{draw-as-radio} [logical : Read / Write]}{

Whether the menu item looks like a radio menu item.  Default value: FALSE

}
\item{\code{inconsistent} [logical : Read / Write]}{

Whether to display an "inconsistent" state.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\code{indicator-size} [integer : Read]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 12

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCheckMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
