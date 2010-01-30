\alias{gdkKeymapGetEntriesForKeyval}
\name{gdkKeymapGetEntriesForKeyval}
\title{gdkKeymapGetEntriesForKeyval}
\description{Obtains a list of keycode/group/level combinations that will
generate \code{keyval}. Groups and levels are two kinds of keyboard mode;
in general, the level determines whether the top or bottom symbol
on a key is used, and the group determines whether the left or
right symbol is used. On US keyboards, the shift key changes the
keyboard level, and there are no groups. A group switch key might
convert a keyboard between Hebrew to English modes, for example.
\verb{\link{GdkEventKey}} contains a \code{group} field that indicates the active
keyboard group. The level is computed from the modifier mask.}
\usage{gdkKeymapGetEntriesForKeyval(object, keyval)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkKeymap}}]  a \verb{\link{GdkKeymap}}, or \code{NULL} to use the default keymap}
\item{\verb{keyval}}{[numeric]  a keyval, such as \code{GDK_a}, \code{GDK_Up}, \code{GDK_Return}, etc.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if keys were found and returned}
\item{\verb{keys}}{[\verb{\link{GdkKeymapKey}}]  return location for a list of \verb{\link{GdkKeymapKey}}}
\item{\verb{n.keys}}{[integer]  return location for number of elements in returned list}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
