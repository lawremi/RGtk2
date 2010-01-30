\alias{gtkFrameGetLabel}
\name{gtkFrameGetLabel}
\title{gtkFrameGetLabel}
\description{If the frame's label widget is a \verb{\link{GtkLabel}}, returns the
text in the label widget. (The frame will have a \verb{\link{GtkLabel}}
for the label widget if a non-\code{NULL} argument was passed
to \code{\link{gtkFrameNew}}.)}
\usage{gtkFrameGetLabel(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkFrame}}]  a \verb{\link{GtkFrame}}}}
\value{[character]  the text in the label, or \code{NULL} if there
              was no label widget or the lable widget was not
              a \verb{\link{GtkLabel}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
