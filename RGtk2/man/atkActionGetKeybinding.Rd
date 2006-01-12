\alias{atkActionGetKeybinding}
\name{atkActionGetKeybinding}
\title{atkActionGetKeybinding}
\description{Returns a keybinding associated with this action, if one exists.}
\usage{atkActionGetKeybinding(object, i)}
\arguments{
\item{\code{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\code{i}}{[integer]  the action index corresponding to the action to be performed }
}
\value{[character] a string representing the keybinding, or \code{NULL}
if there is no keybinding for this action.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
