\alias{GtkColorButton}
\alias{gtkColorButton}
\name{GtkColorButton}
\title{GtkColorButton}
\description{A button to launch a color selection dialog}
\usage{
\link{gtkColorButtonNew}(show = TRUE)
\link{gtkColorButtonNewWithColor}(color, show = TRUE)
\link{gtkColorButtonSetColor}(object, color)
\link{gtkColorButtonGetColor}(object, color)
\link{gtkColorButtonSetAlpha}(object, alpha)
\link{gtkColorButtonGetAlpha}(object)
\link{gtkColorButtonSetUseAlpha}(object, use.alpha)
\link{gtkColorButtonGetUseAlpha}(object)
\link{gtkColorButtonSetTitle}(object, title)
\link{gtkColorButtonGetTitle}(object)
gtkColorButton(color, show = TRUE)
}
\details{The \code{\link{GtkColorButton}} is a button which displays the currently selected color an allows to open a color 
selection dialog to change the color. It is suitable widget for selecting a color in a preference dialog.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkButton}
                                 +----GtkColorButton}}
\section{Structures}{\describe{\item{\code{GtkColorButton}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkColorButton} is the result of collapsing the constructors of \code{GtkColorButton} (\code{\link{gtkColorButtonNew}}, \code{\link{gtkColorButtonNewWithColor}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Interfaces}{GtkColorButton implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{color-set(widget, user.data)}}{
The ::color-set signal is emitted when the user selects a color. When handling this signal,
use \code{\link{gtkColorButtonGetColor}} and \code{\link{gtkColorButtonGetAlpha}} to find out which color 
was just selected.  

  Since  2.4

\describe{
\item{\code{widget}}{[\code{\link{GtkColorButton}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{alpha} [numeric : Read / Write]}{

The selected opacity value (0 fully transparent, 65535 fully opaque).  

  Allowed values: <= 65535  Default value: 65535  Since  2.4

}
\item{\code{color} [\code{\link{GdkColor}} : Read / Write]}{

The selected color.  

  Since  2.4

}
\item{\code{title} [character : Read / Write]}{

The title of the color selection dialog  

  Default value: "Pick a Color"  Since  2.4

}
\item{\code{use-alpha} [logical : Read / Write]}{

If this property is set to \code{TRUE}, the color swatch on the button is rendered against a 
checkerboard background to show its opacity and the opacity slider is displayed in the 
color selection dialog.  

  Default value: FALSE  Since  2.4

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkColorButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkColorSelectionDialog}}
\code{\link{GtkFontButton}}
}
\keyword{internal}
