\alias{GtkVolumeButton}
\alias{gtkVolumeButton}
\name{GtkVolumeButton}
\title{GtkVolumeButton}
\description{A button which pops up a volume control}
\section{Methods and Functions}{
\code{\link{gtkVolumeButtonNew}(show = TRUE)}\cr
\code{gtkVolumeButton(show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkButton}
                                       +----\link{GtkScaleButton}
                                             +----GtkVolumeButton}}
\section{Interfaces}{GtkVolumeButton implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkVolumeButton}} is a subclass of \code{\link{GtkScaleButton}} that has
been tailored for use as a volume control widget with suitable 
icons, tooltips and accessible labels.}
\section{Structures}{\describe{\item{\code{GtkVolumeButton}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVolumeButton} is the equivalent of \code{\link{gtkVolumeButtonNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVolumeButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
