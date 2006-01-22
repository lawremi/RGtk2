\alias{GtkFrame}
\alias{gtkFrame}
\name{GtkFrame}
\title{GtkFrame}
\description{A bin with a decorative frame and optional label}
\usage{gtkFrame(label = NULL, show = TRUE)}
\section{Methods and Functions}{
\link{gtkFrameNew}(label = NULL, show = TRUE)
\link{gtkFrameSetLabel}(object, label = NULL)
\link{gtkFrameSetLabelWidget}(object, label.widget)
\link{gtkFrameSetLabelAlign}(object, xalign, yalign)
\link{gtkFrameSetShadowType}(object, type)
\link{gtkFrameGetLabel}(object)
\link{gtkFrameGetLabelAlign}(object)
\link{gtkFrameGetLabelWidget}(object)
\link{gtkFrameGetShadowType}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkFrame
                                 +----\link{GtkAspectFrame}}}
\section{Interfaces}{GtkFrame implements
 AtkImplementorIface.}
\section{Detailed Description}{The frame widget is a Bin that surrounds its child
with a decorative frame and an optional label.
If present, the label is drawn in a gap in the
top side of the frame. The position of the
label can be controlled with \code{\link{gtkFrameSetLabelAlign}}.}
\section{Structures}{\describe{\item{\code{GtkFrame}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkFrame} is the equivalent of \code{\link{gtkFrameNew}}.}
\section{Properties}{\describe{
\item{\code{label} [character : Read / Write]}{

Text of the frame's label.  Default value: NULL

}
\item{\code{label-widget} [\code{\link{GtkWidget}} : Read / Write]}{

A widget to display in place of the usual frame label.

}
\item{\code{label-xalign} [numeric : Read / Write]}{

The horizontal alignment of the label.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{label-yalign} [numeric : Read / Write]}{

The vertical alignment of the label.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{shadow} [\code{\link{GtkShadowType}} : Read / Write]}{

Deprecated property, use shadow_type instead.  Default value: GTK_SHADOW_ETCHED_IN

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the frame border.  Default value: GTK_SHADOW_ETCHED_IN

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFrame.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
