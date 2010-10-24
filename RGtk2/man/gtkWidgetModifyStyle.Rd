\alias{gtkWidgetModifyStyle}
\name{gtkWidgetModifyStyle}
\title{gtkWidgetModifyStyle}
\description{Modifies style values on the widget. Modifications made using this
technique take precedence over style values set via an RC file,
however, they will be overriden if a style is explicitely set on
the widget using \code{\link{gtkWidgetSetStyle}}. The \code{\link{GtkRcStyle}} structure
is designed so each field can either be set or unset, so it is
possible, using this function, to modify some style values and
leave the others unchanged.}
\usage{gtkWidgetModifyStyle(object, style)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{style}}{the \code{\link{GtkRcStyle}} holding the style modifications}
}
\details{Note that modifications made with this function are not cumulative
with previous calls to \code{\link{gtkWidgetModifyStyle}} or with such
functions as \code{\link{gtkWidgetModifyFg}}. If you wish to retain
previous values, you must first call \code{\link{gtkWidgetGetModifierStyle}},
make your modifications to the returned style, then call
\code{\link{gtkWidgetModifyStyle}} with that style. On the other hand,
if you first call \code{\link{gtkWidgetModifyStyle}}, subsequent calls
to such functions \code{\link{gtkWidgetModifyFg}} will have a cumulative
effect with the initial modifications.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
