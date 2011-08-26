\alias{gtkWidgetGetSnapshot}
\name{gtkWidgetGetSnapshot}
\title{gtkWidgetGetSnapshot}
\description{Create a \code{\link{GdkPixmap}} of the contents of the widget and its children.}
\usage{gtkWidgetGetSnapshot(object, clip.rect = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{clip.rect}}{a \code{\link{GdkRectangle}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Works even if the widget is obscured. The depth and visual of the
resulting pixmap is dependent on the widget being snapshot and likely
differs from those of a target widget displaying the pixmap.
The function \code{\link{gdkPixbufGetFromDrawable}} can be used to convert
the pixmap to a visual independant representation.
  
The snapshot area used by this function is the \code{widget}'s allocation plus
any extra space occupied by additional windows belonging to this widget
(such as the arrows of a spin button).
Thus, the resulting snapshot pixmap is possibly larger than the allocation.
  
If \code{clip.rect} is non-\code{NULL}, the resulting pixmap is shrunken to
match the specified clip_rect. The (x,y) coordinates of \code{clip.rect} are
interpreted widget relative. If width or height of \code{clip.rect} are 0 or
negative, the width or height of the resulting pixmap will be shrunken
by the respective amount.
For instance a \code{clip.rect} \code{{ +5, +5, -10, -10 }} will
chop off 5 pixels at each side of the snapshot pixmap.
If non-\code{NULL}, \code{clip.rect} will contain the exact widget-relative snapshot
coordinates upon return. A \code{clip.rect} of \code{{ -1, -1, 0, 0 }}
can be used to preserve the auto-grown snapshot area and use \code{clip.rect}
as a pure output parameter.
  
The returned pixmap can be \code{NULL}, if the resulting \code{clip.area} was empty.
  Since 2.14}
\value{[\code{\link{GdkPixmap}}] \code{\link{GdkPixmap}} snapshot of the widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
