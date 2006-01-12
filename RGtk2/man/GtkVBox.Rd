\alias{GtkVBox}
\alias{gtkVBox}
\name{GtkVBox}
\title{GtkVBox}
\description{A vertical container box}
\usage{
\link{gtkVBoxNew}(homogeneous = NULL, spacing = NULL, show = TRUE)
gtkVBox(homogeneous = NULL, spacing = NULL, show = TRUE)
}
\details{GtkVBox is a container that organizes child widgets into a single column.
  
Use the \code{\link{GtkBox}} packing interface to determine the arrangement,
spacing, height, and alignment of GtkVBox children.
  
All children are allocated the same width.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----GtkVBox
                                 +----\link{GtkColorSelection}
                                 +----\link{GtkFileChooserWidget}
                                 +----\link{GtkFontSelection}
                                 +----\link{GtkGammaCurve}}}
\section{Structures}{\describe{\item{\code{GtkVBox}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkVBox} is the equivalent of \code{\link{gtkVBoxNew}}.}
\section{Interfaces}{GtkVBox implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
