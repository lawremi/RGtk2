\alias{GtkFrame}
\alias{gtkFrame}
\name{GtkFrame}
\title{GtkFrame}
\description{A bin with a decorative frame and optional label}
\section{Methods and Functions}{
\code{\link{gtkFrameNew}(label = NULL, show = TRUE)}\cr
\code{\link{gtkFrameSetLabel}(object, label = NULL)}\cr
\code{\link{gtkFrameSetLabelWidget}(object, label.widget)}\cr
\code{\link{gtkFrameSetLabelAlign}(object, xalign, yalign)}\cr
\code{\link{gtkFrameSetShadowType}(object, type)}\cr
\code{\link{gtkFrameGetLabel}(object)}\cr
\code{\link{gtkFrameGetLabelAlign}(object)}\cr
\code{\link{gtkFrameGetLabelWidget}(object)}\cr
\code{\link{gtkFrameGetShadowType}(object)}\cr
\code{gtkFrame(label = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkFrame
                                       +----GtkAspectFrame}}
\section{Interfaces}{GtkFrame implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The frame widget is a Bin that surrounds its child
with a decorative frame and an optional label.
If present, the label is drawn in a gap in the
top side of the frame. The position of the
label can be controlled with \code{\link{gtkFrameSetLabelAlign}}.}
\section{GtkFrame as GtkBuildable}{The GtkFrame implementation of the GtkBuildable interface
supports placing a child in the label position by specifying
"label" as the "type" attribute of a <child> element.
A normal content child can be specified without specifying
a <child> type attribute.
  
 \emph{A UI definition fragment with GtkFrame}\preformatted{<object class="GtkFrame">
  <child type="label">
    <object class="GtkLabel" id="frame-label"/>
  </child>
  <child>
    <object class="GtkEntry" id="frame-content"/>
  </child>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkFrame}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkFrame} is the equivalent of \code{\link{gtkFrameNew}}.}
\section{Properties}{\describe{
\item{\verb{label} [character : *                : Read / Write]}{

Text of the frame's label.  Default value: NULL

}
\item{\verb{label-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

A widget to display in place of the usual frame label.

}
\item{\verb{label-xalign} [numeric : Read / Write]}{

The horizontal alignment of the label.  Allowed values: [0,1]  Default value: 0

}
\item{\verb{label-yalign} [numeric : Read / Write]}{

The vertical alignment of the label.  Allowed values: [0,1]  Default value: 0.5

}
\item{\verb{shadow} [\code{\link{GtkShadowType}} : Read / Write]}{

Deprecated property, use shadow_type instead.  Default value: GTK_SHADOW_ETCHED_IN

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the frame border.  Default value: GTK_SHADOW_ETCHED_IN

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFrame.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
