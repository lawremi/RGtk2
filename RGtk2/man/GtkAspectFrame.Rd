\alias{GtkAspectFrame}
\alias{gtkAspectFrame}
\name{GtkAspectFrame}
\title{GtkAspectFrame}
\description{A frame that constrains its child to a particular aspect ratio}
\section{Methods and Functions}{
\code{\link{gtkAspectFrameNew}(label = NULL, xalign = NULL, yalign = NULL, ratio = NULL, obey.child = NULL, show = TRUE)}\cr
\code{\link{gtkAspectFrameSet}(object, xalign = 0, yalign = 0, ratio = 1, obey.child = 1)}\cr
\code{gtkAspectFrame(label = NULL, xalign = NULL, yalign = NULL, ratio = NULL, obey.child = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkFrame}
                                       +----GtkAspectFrame}}
\section{Interfaces}{GtkAspectFrame implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkAspectFrame}} is useful when you want
pack a widget so that it can resize but always retains
the same aspect ratio. For instance, one might be
drawing a small preview of a larger image. \code{\link{GtkAspectFrame}}
derives from \code{\link{GtkFrame}}, so it can draw a label and
a frame around the child. The frame will be
"shrink-wrapped" to the size of the child.}
\section{Structures}{\describe{\item{\code{GtkAspectFrame}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkAspectFrame} is the equivalent of \code{\link{gtkAspectFrameNew}}.}
\section{Properties}{\describe{
\item{\code{obey-child} [logical : Read / Write]}{

Force aspect ratio to match that of the frame's child.  Default value: TRUE

}
\item{\code{ratio} [numeric : Read / Write]}{

Aspect ratio if obey\_child is FALSE.  Allowed values: [0.0001,10000]  Default value: 0.5

}
\item{\code{xalign} [numeric : Read / Write]}{

X alignment of the child.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{yalign} [numeric : Read / Write]}{

Y alignment of the child.  Allowed values: [0,1]  Default value: 0.5

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkAspectFrame.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
