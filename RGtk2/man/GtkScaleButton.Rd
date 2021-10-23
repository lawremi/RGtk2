\alias{GtkScaleButton}
\alias{gtkScaleButton}
\name{GtkScaleButton}
\title{GtkScaleButton}
\description{A button which pops up a scale}
\section{Methods and Functions}{
\code{\link{gtkScaleButtonNew}(size, min, max, step, icons, show = TRUE)}\cr
\code{\link{gtkScaleButtonSetAdjustment}(object, adjustment)}\cr
\code{\link{gtkScaleButtonSetIcons}(object, icons)}\cr
\code{\link{gtkScaleButtonSetValue}(object, value)}\cr
\code{\link{gtkScaleButtonGetAdjustment}(object)}\cr
\code{\link{gtkScaleButtonGetValue}(object)}\cr
\code{\link{gtkScaleButtonGetPopup}(object)}\cr
\code{\link{gtkScaleButtonGetPlusButton}(object)}\cr
\code{\link{gtkScaleButtonGetMinusButton}(object)}\cr
\code{\link{gtkScaleButtonSetOrientation}(object, orientation)}\cr
\code{\link{gtkScaleButtonSetOrientation}(object, orientation)}\cr
\code{\link{gtkScaleButtonGetOrientation}(object)}\cr
\code{\link{gtkScaleButtonGetOrientation}(object)}\cr
\code{gtkScaleButton(size, min, max, step, icons, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkScaleButton
                                             +----GtkVolumeButton}}
\section{Interfaces}{GtkScaleButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkActivatable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\code{\link{GtkScaleButton}} provides a button which pops up a scale widget.
This kind of widget is commonly used for volume controls in multimedia
applications, and GTK+ provides a \code{\link{GtkVolumeButton}} subclass that
is tailored for this use case.}
\section{Structures}{\describe{\item{\verb{GtkScaleButton}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkScaleButton} is the equivalent of \code{\link{gtkScaleButtonNew}}.}
\section{Signals}{\describe{
\item{\code{popdown(button, user.data)}}{
The ::popdown signal is a
keybinding signal
which gets emitted to popdown the scale widget.
  
The default binding for this signal is Escape.
  Since 2.12

\describe{
\item{\code{button}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{popup(button, user.data)}}{
The ::popup signal is a
keybinding signal
which gets emitted to popup the scale widget.
  
The default bindings for this signal are Space, Enter and Return.
  Since 2.12

\describe{
\item{\code{button}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{value-changed(button, value, user.data)}}{
The ::value-changed signal is emitted when the value field has
changed.
  Since 2.12

\describe{
\item{\code{button}}{the object which received the signal}
\item{\code{value}}{the new value}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{adjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write]}{

The GtkAdjustment that contains the current value of this scale button object.

}
\item{\verb{icons} [character list : Read / Write]}{

The names of the icons to be used by the scale button.
The first item in the list will be used in the button
when the current value is the lowest value, the second
item for the highest value. All the subsequent icons will
be used for all the other values, spread evenly over the
range of values.
  
If there's only one icon name in the \code{icons} list, it will
be used for all the values. If only two icon names are in
the \code{icons} list, the first one will be used for the bottom
50\% of the scale, and the second one for the top 50\%.
  
It is recommended to use at least 3 icons so that the
\code{\link{GtkScaleButton}} reflects the current value of the scale
better for the users.
  Since 2.12

}
\item{\verb{size} [\code{\link{GtkIconSize}} : Read / Write]}{

The icon size.  Default value: GTK_ICON_SIZE_SMALL_TOOLBAR

}
\item{\verb{value} [numeric : Read / Write]}{

The value of the scale.  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkScaleButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
