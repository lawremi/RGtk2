\alias{gtkLabelGetLayoutOffsets}
\name{gtkLabelGetLayoutOffsets}
\title{gtkLabelGetLayoutOffsets}
\description{Obtains the coordinates where the label will draw the \verb{\link{PangoLayout}}
representing the text in the label; useful to convert mouse events
into coordinates inside the \verb{\link{PangoLayout}}, e.g. to take some action
if some part of the label is clicked. Of course you will need to
create a \verb{\link{GtkEventBox}} to receive the events, and pack the label
inside it, since labels are a \verb{GTK_NO_WINDOW} widget. Remember
when using the \verb{\link{PangoLayout}} functions you need to convert to
and from pixels using \code{pangoPixels()} or \verb{PANGO_SCALE}.}
\usage{gtkLabelGetLayoutOffsets(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkLabel}}]  a \verb{\link{GtkLabel}}}}
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  location to store X offset of layout, or \code{NULL}}
\item{\verb{y}}{[integer]  location to store Y offset of layout, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
