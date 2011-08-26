\alias{gdkKeymapLookupKey}
\name{gdkKeymapLookupKey}
\title{gdkKeymapLookupKey}
\description{Looks up the keyval mapped to a keycode/group/level triplet.
If no keyval is bound to \code{key}, returns 0. For normal user input,
you want to use \code{\link{gdkKeymapTranslateKeyboardState}} instead of
this function, since the effective group/level may not be
the same as the current keyboard state.}
\usage{gdkKeymapLookupKey(object, key)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkKeymap}} or \code{NULL} to use the default keymap}
\item{\verb{key}}{a \code{\link{GdkKeymapKey}} with keycode, group, and level initialized}
}
\value{[numeric] a keyval, or 0 if none was mapped to the given \code{key}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
