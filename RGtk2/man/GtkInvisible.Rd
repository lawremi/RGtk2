\alias{GtkInvisible}
\alias{gtkInvisible}
\name{GtkInvisible}
\title{GtkInvisible}
\description{A widget which is not displayed}
\section{Methods and Functions}{
\code{\link{gtkInvisibleNew}(show = TRUE)}\cr
\code{\link{gtkInvisibleNewForScreen}(screen, show = TRUE)}\cr
\code{\link{gtkInvisibleSetScreen}(object, screen)}\cr
\code{\link{gtkInvisibleGetScreen}(object)}\cr
\code{gtkInvisible(screen, show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkInvisible}}
\section{Interfaces}{GtkInvisible implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkInvisible}} widget is used internally in GTK+, and is probably not 
very useful for application developers.
  
It is used for reliable pointer grabs and selection handling in the code
for drag-and-drop.}
\section{Structures}{\describe{\item{\code{GtkInvisible}}{
The \code{\link{GtkInvisible}} struct contains no public fields.

}}}
\section{Convenient Construction}{\code{gtkInvisible} is the result of collapsing the constructors of \code{GtkInvisible} (\code{\link{gtkInvisibleNew}}, \code{\link{gtkInvisibleNewForScreen}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{\item{\code{screen} [\code{\link{GdkScreen}} : Read / Write]}{

The screen where this window will be displayed.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkInvisible.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
