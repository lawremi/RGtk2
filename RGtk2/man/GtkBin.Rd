\alias{GtkBin}
\name{GtkBin}
\title{GtkBin}
\description{A container with just one child}
\section{Methods and Functions}{
\code{\link{gtkBinGetChild}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkBin
                                 +----\link{GtkWindow}
                                 +----\link{GtkAlignment}
                                 +----\link{GtkFrame}
                                 +----\link{GtkButton}
                                 +----\link{GtkItem}
                                 +----\link{GtkComboBox}
                                 +----\link{GtkEventBox}
                                 +----\link{GtkExpander}
                                 +----\link{GtkHandleBox}
                                 +----\link{GtkToolItem}
                                 +----\link{GtkScrolledWindow}
                                 +----\link{GtkViewport}}}
\section{Interfaces}{GtkBin implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkBin}} widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.
  
Many GTK+ widgets are subclasses of \code{\link{GtkBin}}, including \code{\link{GtkWindow}}, \code{\link{GtkButton}},
\code{\link{GtkFrame}}, \code{\link{GtkHandleBox}}, and \code{\link{GtkScrolledWindow}}.}
\section{Structures}{\describe{\item{\code{GtkBin}}{
The \code{\link{GtkBin}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{\code{\link{GtkWidget}}   *child; \tab the child widget. \cr}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkBin.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
