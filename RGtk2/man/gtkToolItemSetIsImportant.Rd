\alias{gtkToolItemSetIsImportant}
\name{gtkToolItemSetIsImportant}
\title{gtkToolItemSetIsImportant}
\description{Sets whether \code{tool.item} should be considered important. The \code{\link{GtkToolButton}}
class uses this property to determine whether to show or hide its label
when the toolbar style is \code{GTK_TOOLBAR_BOTH_HORIZ}. The result is that
only tool buttons with the "is_important" property set have labels, an
effect known as "priority text"}
\usage{gtkToolItemSetIsImportant(object, is.important)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolItem}}}
\item{\verb{is.important}}{whether the tool item should be considered important}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
