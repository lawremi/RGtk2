\alias{GtkVBox}
\alias{gtkVBox}
\name{GtkVBox}
\title{GtkVBox}
\description{A vertical container box}
\section{Methods and Functions}{
\code{\link{gtkVBoxNew}(homogeneous = NULL, spacing = NULL, show = TRUE)}\cr
\code{gtkVBox(homogeneous = NULL, spacing = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkColorSelection
                                       +----GtkFileChooserWidget
                                       +----GtkFontSelection
                                       +----GtkGammaCurve
                                       +----GtkRecentChooserWidget}}
\section{Interfaces}{GtkVBox implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{GtkVBox is a container that organizes child widgets into a single column.
  
Use the \verb{\link{GtkBox}} packing interface to determine the arrangement,
spacing, height, and alignment of GtkVBox children.
  
All children are allocated the same width.}
\section{Structures}{\describe{\item{\verb{GtkVBox}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVBox} is the equivalent of \code{\link{gtkVBoxNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
