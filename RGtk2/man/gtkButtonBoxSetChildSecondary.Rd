\alias{gtkButtonBoxSetChildSecondary}
\name{gtkButtonBoxSetChildSecondary}
\title{gtkButtonBoxSetChildSecondary}
\description{Sets whether \code{child} should appear in a secondary group of children.
A typical use of a secondary child is the help button in a dialog.}
\usage{gtkButtonBoxSetChildSecondary(object, child, is.secondary)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkButtonBox}}}
\item{\verb{child}}{a child of \code{widget}}
\item{\verb{is.secondary}}{if \code{TRUE}, the \code{child} appears in a secondary group of the
button box.}
}
\details{This group appears after the other children if the style
is \code{GTK_BUTTONBOX_START}, \code{GTK_BUTTONBOX_SPREAD} or
\code{GTK_BUTTONBOX_EDGE}, and before the other children if the style
is \code{GTK_BUTTONBOX_END}. For horizontal button boxes, the definition
of before/after depends on direction of the widget (see
\code{\link{gtkWidgetSetDirection}}). If the style is \code{GTK_BUTTONBOX_START}
or \code{GTK_BUTTONBOX_END}, then the secondary children are aligned at
the other end of the button box from the main children. For the
other styles, they appear immediately next to the main children.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
