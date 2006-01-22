\alias{GtkEventBox}
\alias{gtkEventBox}
\name{GtkEventBox}
\title{GtkEventBox}
\description{A widget used to catch events for widgets which do not have their own window}
\usage{gtkEventBox(show = TRUE)}
\section{Methods and Functions}{
\link{gtkEventBoxNew}(show = TRUE)
\link{gtkEventBoxSetAboveChild}(object, above.child)
\link{gtkEventBoxGetAboveChild}(object)
\link{gtkEventBoxSetVisibleWindow}(object, visible.window)
\link{gtkEventBoxGetVisibleWindow}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkEventBox}}
\section{Interfaces}{GtkEventBox implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkEventBox}} widget is a subclass of \code{\link{GtkBin}} which also has its own window.
It is useful since it allows you to catch events for widgets which do not
have their own window.}
\section{Structures}{\describe{\item{\code{GtkEventBox}}{
The \code{\link{GtkEventBox}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkEventBox} is the equivalent of \code{\link{gtkEventBoxNew}}.}
\section{Properties}{\describe{
\item{\code{above-child} [logical : Read / Write]}{

Whether the event-trapping window of the eventbox is above the window of the child widget as opposed to below it.  Default value: FALSE

}
\item{\code{visible-window} [logical : Read / Write]}{

Whether the event box is visible, as opposed to invisible and only used to trap events.  Default value: TRUE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkEventBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
