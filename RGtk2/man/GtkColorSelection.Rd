\alias{GtkColorSelection}
\alias{gtkColorSelection}
\alias{GtkColorSelectionChangePaletteFunc}
\alias{GtkColorSelectionChangePaletteWithScreenFunc}
\name{GtkColorSelection}
\title{GtkColorSelection}
\description{A widget used to select a color}
\section{Methods and Functions}{
\code{\link{gtkColorSelectionNew}(show = TRUE)}\cr
\code{\link{gtkColorSelectionSetUpdatePolicy}(object, policy)}\cr
\code{\link{gtkColorSelectionSetHasOpacityControl}(object, has.opacity)}\cr
\code{\link{gtkColorSelectionGetHasOpacityControl}(object)}\cr
\code{\link{gtkColorSelectionSetHasPalette}(object, has.palette)}\cr
\code{\link{gtkColorSelectionGetHasPalette}(object)}\cr
\code{\link{gtkColorSelectionGetCurrentAlpha}(object)}\cr
\code{\link{gtkColorSelectionSetCurrentAlpha}(object, alpha)}\cr
\code{\link{gtkColorSelectionGetCurrentColor}(object)}\cr
\code{\link{gtkColorSelectionSetCurrentColor}(object, color)}\cr
\code{\link{gtkColorSelectionGetPreviousAlpha}(object)}\cr
\code{\link{gtkColorSelectionSetPreviousAlpha}(object, alpha)}\cr
\code{\link{gtkColorSelectionGetPreviousColor}(object, color)}\cr
\code{\link{gtkColorSelectionSetPreviousColor}(object, color)}\cr
\code{\link{gtkColorSelectionIsAdjusting}(object)}\cr
\code{\link{gtkColorSelectionPaletteFromString}(str)}\cr
\code{\link{gtkColorSelectionPaletteToString}(colors)}\cr
\code{\link{gtkColorSelectionSetChangePaletteHook}(func)}\cr
\code{\link{gtkColorSelectionSetChangePaletteWithScreenHook}(func)}\cr
\code{\link{gtkColorSelectionSetColor}(object, color)}\cr
\code{\link{gtkColorSelectionGetColor}(object)}\cr
\code{gtkColorSelection(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkColorSelection}}
\section{Interfaces}{GtkColorSelection implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkColorSelection}} is a widget that is used to select
a color.  It consists of a color wheel and number of sliders
and entry boxes for color parameters such as hue, saturation,
value, red, green, blue, and opacity.  It is found on the standard
color selection dialog box \code{\link{GtkColorSelectionDialog}}.}
\section{Structures}{\describe{\item{\verb{GtkColorSelection}}{
The \code{\link{GtkColorSelection}} struct contains private data only,
and should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkColorSelection} is the equivalent of \code{\link{gtkColorSelectionNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkColorSelectionChangePaletteFunc()}}{
\emph{undocumented
}




}
\item{\code{GtkColorSelectionChangePaletteWithScreenFunc()}}{
  Since 2.2




}
}}
\section{Signals}{\describe{\item{\code{color-changed(colorselection, user.data)}}{
This signal is emitted when the color changes in the \code{\link{GtkColorSelection}}
according to its update policy.

\describe{
\item{\code{colorselection}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{current-alpha} [numeric : Read / Write]}{

The current opacity value (0 fully transparent, 65535 fully opaque).  Allowed values: <= 65535  Default value: 65535

}
\item{\verb{current-color} [\code{\link{GdkColor}} : *             : Read / Write]}{

The current color.

}
\item{\verb{has-opacity-control} [logical : Read / Write]}{

Whether the color selector should allow setting opacity.  Default value: FALSE

}
\item{\verb{has-palette} [logical : Read / Write]}{

Whether a palette should be used.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkColorSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
