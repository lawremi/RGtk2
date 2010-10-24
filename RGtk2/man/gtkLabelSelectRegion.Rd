\alias{gtkLabelSelectRegion}
\name{gtkLabelSelectRegion}
\title{gtkLabelSelectRegion}
\description{Selects a range of characters in the label, if the label is selectable.
See \code{\link{gtkLabelSetSelectable}}. If the label is not selectable,
this function has no effect. If \code{start.offset} or
\code{end.offset} are -1, then the end of the label will be substituted.}
\usage{gtkLabelSelectRegion(object, start.offset, end.offset)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkLabel}}}
\item{\verb{start.offset}}{start offset (in characters not bytes)}
\item{\verb{end.offset}}{end offset (in characters not bytes)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
