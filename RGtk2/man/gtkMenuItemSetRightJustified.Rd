\alias{gtkMenuItemSetRightJustified}
\name{gtkMenuItemSetRightJustified}
\title{gtkMenuItemSetRightJustified}
\description{Sets whether the menu item appears justified at the right
side of a menu bar. This was traditionally done for "Help" menu
items, but is now considered a bad idea. (If the widget
layout is reversed for a right-to-left language like Hebrew
or Arabic, right-justified-menu-items appear at the left.)}
\usage{gtkMenuItemSetRightJustified(object, right.justified)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenuItem}}.}
\item{\verb{right.justified}}{if \code{TRUE} the menu item will appear at the
far right if added to a menu bar.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
