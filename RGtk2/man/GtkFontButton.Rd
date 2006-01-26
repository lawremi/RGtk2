\alias{GtkFontButton}
\alias{gtkFontButton}
\name{GtkFontButton}
\title{GtkFontButton}
\description{A button to launch a font selection dialog}
\section{Methods and Functions}{
\code{\link{gtkFontButtonNew}(show = TRUE)}\cr
\code{\link{gtkFontButtonNewWithFont}(fontname)}\cr
\code{\link{gtkFontButtonSetFontName}(object, fontname)}\cr
\code{\link{gtkFontButtonGetFontName}(object)}\cr
\code{\link{gtkFontButtonSetShowStyle}(object, show.style)}\cr
\code{\link{gtkFontButtonGetShowStyle}(object)}\cr
\code{\link{gtkFontButtonSetShowSize}(object, show.size)}\cr
\code{\link{gtkFontButtonGetShowSize}(object)}\cr
\code{\link{gtkFontButtonSetUseFont}(object, use.font)}\cr
\code{\link{gtkFontButtonGetUseFont}(object)}\cr
\code{\link{gtkFontButtonSetUseSize}(object, use.size)}\cr
\code{\link{gtkFontButtonGetUseSize}(object)}\cr
\code{\link{gtkFontButtonSetTitle}(object, title)}\cr
\code{\link{gtkFontButtonGetTitle}(object)}\cr
\code{gtkFontButton(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkButton}
                                 +----GtkFontButton}}
\section{Interfaces}{GtkFontButton implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkFontButton}} is a button which displays the currently selected font an allows to open a font selection 
dialog to change the font. It is suitable widget for selecting a font in a preference dialog.}
\section{Structures}{\describe{\item{\code{GtkFontButton}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkFontButton} is the equivalent of \code{\link{gtkFontButtonNew}}.}
\section{Signals}{\describe{\item{\code{font-set(widget, user.data)}}{
The ::font-set signal is emitted when the user selects a font. When handling this signal,
use \code{\link{gtkFontButtonGetFontName}} to find out which font was just selected.  

  Since  2.4

\describe{
\item{\code{widget}}{[\code{\link{GtkFontButton}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{font-name} [character : Read / Write]}{

The name of the currently selected font.  

  Default value: "Sans 12"  Since  2.4

}
\item{\code{show-size} [logical : Read / Write]}{

If this property is set to \code{TRUE}, the selected font size will be shown in the label. For
a more WYSIWIG way to show the selected size, see the ::use-size property.  

  Default value: TRUE  Since  2.4

}
\item{\code{show-style} [logical : Read / Write]}{

If this property is set to \code{TRUE}, the name of the selected font style will be shown in the label. For
a more WYSIWIG way to show the selected style, see the ::use-font property.  

  Default value: TRUE  Since  2.4

}
\item{\code{title} [character : Read / Write]}{

The title of the font selection dialog.  

  Default value: "Pick a Font"  Since  2.4

}
\item{\code{use-font} [logical : Read / Write]}{

If this property is set to \code{TRUE}, the label will be drawn in the selected font.  

  Default value: FALSE  Since  2.4

}
\item{\code{use-size} [logical : Read / Write]}{

If this property is set to \code{TRUE}, the label will be drawn with the selected font size.  

  Default value: FALSE  Since  2.4

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFontButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkFontSelectionDialog}}
\code{\link{GtkColorButton}}
}
\keyword{internal}
