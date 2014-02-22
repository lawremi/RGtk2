\alias{gdkKeymapTranslateKeyboardState}
\name{gdkKeymapTranslateKeyboardState}
\title{gdkKeymapTranslateKeyboardState}
\description{Translates the contents of a \code{\link{GdkEventKey}} into a keyval, effective
group, and level. Modifiers that affected the translation and
are thus unavailable for application use are returned in
\code{consumed.modifiers}.  See  for an explanation of
groups and levels.  The \code{effective.group} is the group that was
actually used for the translation; some keys such as Enter are not
affected by the active keyboard group. The \code{level} is derived from
\code{state}. For convenience, \code{\link{GdkEventKey}} already contains the translated
keyval, so this function isn't as useful as you might think.}
\usage{gdkKeymapTranslateKeyboardState(object, hardware.keycode, state, 
    group)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkKeymap}}, or \code{NULL} to use the default. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{hardware.keycode}}{a keycode}
\item{\verb{state}}{a modifier state}
\item{\verb{group}}{active keyboard group}
}
\details{\strong{PLEASE NOTE:} \code{consumed.modifiers} gives modifiers that should be masked out
from \code{state} when comparing this key press to a hot key. For
instance, on a US keyboard, the \code{plus}
symbol is shifted, so when comparing a key press to a
\code{<Control>plus} accelerator <Shift> should
be masked out.
  \preformatted{
# We want to ignore irrelevant modifiers like ScrollLock
all_accels_mask <- GdkModifierType["control-mask"] | 
GdkModifierType["shift-mask"] | GdkModifierType["mod1-mask"]
state <- gdkKeymapTranslateKeyboardState(keymap, event[["hardware_keycode"]],
                                         event[["state"]], event[["group"]])
unconsumed <- all_accels_mask & event[["state"]] & !as.flag(state$consumed) 
if (state$keyval == .gdkPlus && unconsumed == GdkModifierType["control-mask"])
  print("Control was pressed")
}  
An older interpretation \code{consumed.modifiers} was that it contained
all modifiers that might affect the translation of the key;
this allowed accelerators to be stored with irrelevant consumed
modifiers, by doing:  \preformatted{
# XXX Don't do this XXX
unconsumed <- all_accel_mask & event[["state"]] & !as.flag(state$consumed)
if (state$keyval == accel_keyval &&
    unconsumed == accel_mods & !as.flag(state$consumed))
  print("Accellerator was pressed")
}  
However, this did not work if multi-modifier combinations were
used in the keymap, since, for instance, \code{<Control>}
would be masked out even if only \code{<Control><Alt>}
was used in the keymap. To support this usage as well as well as
possible, all \emph{single modifier} combinations
that could affect the key for any combination of modifiers will
be returned in \code{consumed.modifiers}; multi-modifier combinations
are returned only when actually found in \code{state}. When you store
accelerators, you should always store them with consumed modifiers
removed. Store \code{<Control>plus},
not \code{<Control><Shift>plus},}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there was a keyval bound to the keycode/state/group}
\item{\verb{keyval}}{return location for keyval, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{effective.group}}{return location for effective group, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{level}}{return location for level, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{consumed.modifiers}}{return location for modifiers that were used to
determine the group or level, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\note{\code{consumed.modifiers} gives modifiers that should be masked out
from \code{state} when comparing this key press to a hot key. For
instance, on a US keyboard, the \code{plus}
symbol is shifted, so when comparing a key press to a
\code{<Control>plus} accelerator <Shift> should
be masked out.
  
An older interpretation \code{consumed.modifiers} was that it contained
all modifiers that might affect the translation of the key;
this allowed accelerators to be stored with irrelevant consumed
modifiers, by doing:  
However, this did not work if multi-modifier combinations were
used in the keymap, since, for instance, \code{<Control>}
would be masked out even if only \code{<Control><Alt>}
was used in the keymap. To support this usage as well as well as
possible, all \emph{single modifier} combinations
that could affect the key for any combination of modifiers will
be returned in \code{consumed.modifiers}; multi-modifier combinations
are returned only when actually found in \code{state}. When you store
accelerators, you should always store them with consumed modifiers
removed. Store \code{<Control>plus},
not \code{<Control><Shift>plus},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
