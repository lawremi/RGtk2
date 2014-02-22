\alias{gdkKeymapGetEntriesForKeycode}
\name{gdkKeymapGetEntriesForKeycode}
\title{gdkKeymapGetEntriesForKeycode}
\description{Returns the keyvals bound to \code{hardware.keycode}.
The Nth \code{\link{GdkKeymapKey}} in \code{keys} is bound to the Nth
keyval in \code{keyvals}.
When a keycode is pressed by the user, the keyval from
this list of entries is selected by considering the effective
keyboard group and level. See \code{\link{gdkKeymapTranslateKeyboardState}}.}
\usage{gdkKeymapGetEntriesForKeycode(object, hardware.keycode)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkKeymap}} or \code{NULL} to use the default keymap}
\item{\verb{hardware.keycode}}{a keycode}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there were any entries}
\item{\verb{keys}}{return location for list of \code{\link{GdkKeymapKey}}, or NULL}
\item{\verb{keyvals}}{return location for list of keyvals, or NULL}
\item{\verb{n.entries}}{length of \code{keys} and \code{keyvals}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
