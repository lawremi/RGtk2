\alias{gdkRgbFindColor}
\name{gdkRgbFindColor}
\title{gdkRgbFindColor}
\description{\code{colormap} should be the colormap for the graphics context and
drawable you're using to draw. If you're drawing to a \code{\link{GtkWidget}},
call \code{\link{gtkWidgetGetColormap}}.}
\usage{gdkRgbFindColor(colormap, color)}
\arguments{
\item{\verb{colormap}}{a \code{\link{GdkColormap}}}
\item{\verb{color}}{a \code{\link{GdkColor}}}
}
\details{\code{color} should have its \code{red}, \code{green}, and \code{blue} fields initialized;
\code{\link{gdkRgbFindColor}} will fill in the \code{pixel} field with the best
matching pixel from a color cube. The color is then ready to be
used for drawing, e.g. you can call \code{\link{gdkGCSetForeground}} which
expects \code{pixel} to be initialized.
  
In many cases, you can avoid this whole issue by calling
\code{\link{gdkGCSetRgbFgColor}} or \code{\link{gdkGCSetRgbBgColor}}, which
do not expect \code{pixel} to be initialized in advance. If you use those
functions, there's no need for \code{\link{gdkRgbFindColor}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
