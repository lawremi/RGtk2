\alias{GtkColorSelection}
\alias{gtkColorSelection}
\alias{GtkColorSelectionChangePaletteFunc}
\alias{GtkColorSelectionChangePaletteWithScreenFunc}
\name{GtkColorSelection}
\title{GtkColorSelection}
\description{A widget used to select a color}
\usage{
\link{gtkColorSelectionNew}(show = TRUE)
\link{gtkColorSelectionSetUpdatePolicy}(object, policy)
\link{gtkColorSelectionSetHasOpacityControl}(object, has.opacity)
\link{gtkColorSelectionGetHasOpacityControl}(object)
\link{gtkColorSelectionSetHasPalette}(object, has.palette)
\link{gtkColorSelectionGetHasPalette}(object)
\link{gtkColorSelectionGetCurrentAlpha}(object)
\link{gtkColorSelectionSetCurrentAlpha}(object, alpha)
\link{gtkColorSelectionGetCurrentColor}(object)
\link{gtkColorSelectionSetCurrentColor}(object, color)
\link{gtkColorSelectionGetPreviousAlpha}(object)
\link{gtkColorSelectionSetPreviousAlpha}(object, alpha)
\link{gtkColorSelectionGetPreviousColor}(object, color)
\link{gtkColorSelectionSetPreviousColor}(object, color)
\link{gtkColorSelectionIsAdjusting}(object)
\link{gtkColorSelectionPaletteFromString}(str)
\link{gtkColorSelectionPaletteToString}(colors)
\link{gtkColorSelectionSetChangePaletteHook}(func)
\link{gtkColorSelectionSetChangePaletteWithScreenHook}(func)
\link{gtkColorSelectionSetColor}(object, color)
\link{gtkColorSelectionGetColor}(object)
gtkColorSelection(show = TRUE)
}
\details{The \code{\link{GtkColorSelection}} is a widget that is used to select 
a color.  It consists of a color wheel and number of sliders
and entry boxes for color parameters such as hue, saturation,
value, red, green, blue, and opacity.  It is found on the standard 
color selection dialog box \code{\link{GtkColorSelectionDialog}}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkVBox}
                                 +----GtkColorSelection}}
\section{Structures}{\describe{\item{\code{GtkColorSelection}}{
The \code{\link{GtkColorSelection}} struct contains private data only, 
and should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkColorSelection} is the equivalent of \code{\link{gtkColorSelectionNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkColorSelectionChangePaletteFunc(colors, n.colors)}}{


\describe{
\item{\code{colors}}{[\code{\link{GdkColor}}] }
\item{\code{n.colors}}{[integer] }
}

}
\item{\code{GtkColorSelectionChangePaletteWithScreenFunc(screen, colors, n.colors)}}{
  Since 2.2

\describe{
\item{\code{screen}}{[\code{\link{GdkScreen}}] }
\item{\code{colors}}{[\code{\link{GdkColor}}] }
\item{\code{n.colors}}{[integer] }
}

}
}}
\section{Interfaces}{GtkColorSelection implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{color-changed(colorselection, user.data)}}{
This signal is emitted when the color changes in the \code{\link{GtkColorSelection}}
according to its update policy.

\describe{
\item{\code{colorselection}}{[\code{\link{GtkColorSelection}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{current-alpha} [numeric : Read / Write]}{

The current opacity value (0 fully transparent, 65535 fully opaque).  Allowed values: <= 65535  Default value: 65535

}
\item{\code{current-color} [\code{\link{GdkColor}} : Read / Write]}{

The current color.

}
\item{\code{has-opacity-control} [logical : Read / Write]}{

Whether the color selector should allow setting opacity.  Default value: FALSE

}
\item{\code{has-palette} [logical : Read / Write]}{

Whether a palette should be used.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkColorSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
