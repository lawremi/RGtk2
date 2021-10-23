\alias{GtkButton}
\alias{gtkButton}
\name{GtkButton}
\title{GtkButton}
\description{A widget that creates a signal when clicked on}
\section{Methods and Functions}{
\code{\link{gtkButtonNew}(show = TRUE)}\cr
\code{\link{gtkButtonNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkButtonNewWithMnemonic}(label, show = TRUE)}\cr
\code{\link{gtkButtonNewFromStock}(stock.id, show = TRUE)}\cr
\code{\link{gtkButtonPressed}(object)}\cr
\code{\link{gtkButtonReleased}(object)}\cr
\code{\link{gtkButtonClicked}(object)}\cr
\code{\link{gtkButtonEnter}(object)}\cr
\code{\link{gtkButtonLeave}(object)}\cr
\code{\link{gtkButtonSetRelief}(object, newstyle)}\cr
\code{\link{gtkButtonGetRelief}(object)}\cr
\code{\link{gtkButtonGetLabel}(object)}\cr
\code{\link{gtkButtonSetLabel}(object, label)}\cr
\code{\link{gtkButtonGetUseStock}(object)}\cr
\code{\link{gtkButtonSetUseStock}(object, use.stock)}\cr
\code{\link{gtkButtonGetUseUnderline}(object)}\cr
\code{\link{gtkButtonSetUseUnderline}(object, use.underline)}\cr
\code{\link{gtkButtonSetFocusOnClick}(object, focus.on.click)}\cr
\code{\link{gtkButtonGetFocusOnClick}(object)}\cr
\code{\link{gtkButtonSetAlignment}(object, xalign, yalign)}\cr
\code{\link{gtkButtonGetAlignment}(object)}\cr
\code{\link{gtkButtonSetImage}(object, image)}\cr
\code{\link{gtkButtonGetImage}(object)}\cr
\code{\link{gtkButtonSetImagePosition}(object, position)}\cr
\code{\link{gtkButtonGetImagePosition}(object)}\cr
\code{gtkButton(label, stock.id, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkToggleButton
                                       +----GtkColorButton
                                       +----GtkFontButton
                                       +----GtkLinkButton
                                       +----GtkOptionMenu
                                       +----GtkScaleButton}}
\section{Interfaces}{GtkButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{The \code{\link{GtkButton}} widget is generally used to attach a function to that
is called when the button is pressed.  The various signals and how to use
them are outlined below.
  
The \code{\link{GtkButton}} widget can hold any valid child widget.  That is it can
hold most any other standard \code{\link{GtkWidget}}.  The most commonly used child is
the \code{\link{GtkLabel}}.}
\section{Structures}{\describe{\item{\verb{GtkButton}}{
This should not be accessed directly.  Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkButton} is the result of collapsing the constructors of \code{GtkButton} (\code{\link{gtkButtonNew}}, \code{\link{gtkButtonNewWithLabel}}, \code{\link{gtkButtonNewFromStock}}, \code{\link{gtkButtonNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate(widget, user.data)}}{
The ::activate signal on GtkButton is an action signal and
emitting it causes the button to animate press then release.
Applications should never connect to this signal, but use the
\code{\link{gtkButtonClicked}} signal.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{clicked(button, user.data)}}{
Emitted when the button has been activated (pressed and released).

\describe{
\item{\code{button}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{enter(button, user.data)}}{
Emitted when the pointer enters the button.

\describe{
\item{\code{button}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{leave(button, user.data)}}{
Emitted when the pointer leaves the button.

\describe{
\item{\code{button}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{pressed(button, user.data)}}{
Emitted when the button is pressed.

\describe{
\item{\code{button}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{released(button, user.data)}}{
Emitted when the button is released.

\describe{
\item{\code{button}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{focus-on-click} [logical : Read / Write]}{

Whether the button grabs focus when it is clicked with the mouse.  Default value: TRUE

}
\item{\verb{image} [\code{\link{GtkWidget}} : *            : Read / Write]}{

Child widget to appear next to the button text.

}
\item{\verb{image-position} [\code{\link{GtkPositionType}} : Read / Write]}{

The position of the image relative to the text inside the button.
  Default value: GTK_POS_LEFT  Since 2.10

}
\item{\verb{label} [character : *                : Read / Write / Construct]}{

Text of the label widget inside the button, if the button contains a label widget.  Default value: NULL

}
\item{\verb{relief} [\code{\link{GtkReliefStyle}} : Read / Write]}{

The border relief style.  Default value: GTK_RELIEF_NORMAL

}
\item{\verb{use-stock} [logical : Read / Write / Construct]}{

If set, the label is used to pick a stock item instead of being displayed.  Default value: FALSE

}
\item{\verb{use-underline} [logical : Read / Write / Construct]}{

If set, an underline in the text indicates the next character should be used for the mnemonic accelerator key.  Default value: FALSE

}
\item{\verb{xalign} [numeric : Read / Write]}{

If the child of the button is a \code{\link{GtkMisc}} or \code{\link{GtkAlignment}}, this property
can be used to control it's horizontal alignment. 0.0 is left aligned,
1.0 is right aligned.
  Allowed values: [0,1]  Default value: 0.5  Since 2.4

}
\item{\verb{yalign} [numeric : Read / Write]}{

If the child of the button is a \code{\link{GtkMisc}} or \code{\link{GtkAlignment}}, this property
can be used to control it's vertical alignment. 0.0 is top aligned,
1.0 is bottom aligned.
  Allowed values: [0,1]  Default value: 0.5  Since 2.4

}
}}
\section{Style Properties}{\describe{
\item{\verb{child-displacement-x} [integer : Read]}{

How far in the x direction to move the child when the button is depressed.  Default value: 0

}
\item{\verb{child-displacement-y} [integer : Read]}{

How far in the y direction to move the child when the button is depressed.  Default value: 0

}
\item{\verb{default-border} [\code{\link{GtkBorder}} : *            : Read]}{

The "default-border" style property defines the extra space to add
around a button that can become the default widget of its window.
For more information about default widgets, see \code{\link{gtkWidgetGrabDefault}}.

}
\item{\verb{default-outside-border} [\code{\link{GtkBorder}} : *            : Read]}{

The "default-outside-border" style property defines the extra outside
space to add around a button that can become the default widget of its
window. Extra outside space is always drawn outside the button border.
For more information about default widgets, see \code{\link{gtkWidgetGrabDefault}}.

}
\item{\verb{displace-focus} [logical : Read]}{

Whether the child_displacement_x/child_displacement_y properties
should also affect the focus rectangle.
  Default value: FALSE  Since 2.6

}
\item{\verb{image-spacing} [integer : Read]}{

Spacing in pixels between the image and label.  Allowed values: >= 0  Default value: 2

}
\item{\verb{inner-border} [\code{\link{GtkBorder}} : *            : Read]}{

Sets the border between the button edges and child.
  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
