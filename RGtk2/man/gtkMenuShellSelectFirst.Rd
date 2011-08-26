\alias{gtkMenuShellSelectFirst}
\name{gtkMenuShellSelectFirst}
\title{gtkMenuShellSelectFirst}
\description{Select the first visible or selectable child of the menu shell;
don't select tearoff items unless the only item is a tearoff
item.}
\usage{gtkMenuShellSelectFirst(object, search.sensitive)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenuShell}}}
\item{\verb{search.sensitive}}{if \code{TRUE}, search for the first selectable
menu item, otherwise select nothing if
the first item isn't sensitive. This
should be \code{FALSE} if the menu is being
popped up initially.}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
