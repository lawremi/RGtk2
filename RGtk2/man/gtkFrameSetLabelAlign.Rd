\alias{gtkFrameSetLabelAlign}
\name{gtkFrameSetLabelAlign}
\title{gtkFrameSetLabelAlign}
\description{Sets the alignment of the frame widget's label. The
default values for a newly created frame are 0.0 and 0.5.}
\usage{gtkFrameSetLabelAlign(object, xalign, yalign)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFrame}}}
\item{\verb{xalign}}{The position of the label along the top edge
of the widget. A value of 0.0 represents left alignment;
1.0 represents right alignment.}
\item{\verb{yalign}}{The y alignment of the label. A value of 0.0 aligns under
the frame; 1.0 aligns above the frame. If the values are exactly
0.0 or 1.0 the gap in the frame won't be painted because the label
will be completely above or below the frame.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
