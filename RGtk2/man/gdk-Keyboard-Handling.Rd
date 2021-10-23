\alias{gdk-Keyboard-Handling}
\alias{GdkKeymap}
\alias{GdkKeymapKey}
\name{gdk-Keyboard-Handling}
\title{Key Values}
\description{Functions for manipulating keyboard codes}
\section{Methods and Functions}{
\code{\link{gdkKeymapGetDefault}()}\cr
\code{\link{gdkKeymapGetForDisplay}(display)}\cr
\code{\link{gdkKeymapLookupKey}(object, key)}\cr
\code{\link{gdkKeymapTranslateKeyboardState}(object, hardware.keycode, state, group)}\cr
\code{\link{gdkKeymapGetEntriesForKeyval}(object, keyval)}\cr
\code{\link{gdkKeymapGetEntriesForKeycode}(object, hardware.keycode)}\cr
\code{\link{gdkKeymapGetDirection}(object)}\cr
\code{\link{gdkKeymapHaveBidiLayouts}(object)}\cr
\code{\link{gdkKeymapGetCapsLockState}(object)}\cr
\code{\link{gdkKeymapAddVirtualModifiers}(object)}\cr
\code{\link{gdkKeymapMapVirtualModifiers}(object)}\cr
\code{\link{gdkKeyvalName}(keyval)}\cr
\code{\link{gdkKeyvalFromName}(keyval.name)}\cr
\code{\link{gdkKeyvalConvertCase}(symbol)}\cr
\code{\link{gdkKeyvalToUpper}(keyval)}\cr
\code{\link{gdkKeyvalToLower}(keyval)}\cr
\code{\link{gdkKeyvalIsUpper}(keyval)}\cr
\code{\link{gdkKeyvalIsLower}(keyval)}\cr
\code{\link{gdkKeyvalToUnicode}(keyval)}\cr
\code{\link{gdkUnicodeToKeyval}(wc)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GdkKeymap}}
\section{Detailed Description}{Key values are the codes which are sent whenever a key is pressed or released.
They appear in the \code{keyval} field of the
\code{\link{GdkEventKey}} structure, which is passed to signal handlers for the
"key-press-event" and "key-release-event" signals.
The complete list of key values can be found in the \file{<gdk/gdkkeysyms.h>}
header file. \file{<gdk/gdkkeysyms.h>} is not included in \file{<gdk/gdk.h>},
it must be included independently, because the file is quite large.
  
Key values are regularly updated from the upstream X.org X11 implementation,
so new values are added regularly. They will be prefixed with GDK_ rather than
XF86XK_ or XK_ (for older symbols).
  
Key values can be converted into a string representation using
\code{\link{gdkKeyvalName}}. The reverse function, converting a string to a key value,
is provided by \code{\link{gdkKeyvalFromName}}.
  
The case of key values can be determined using \code{\link{gdkKeyvalIsUpper}} and
\code{\link{gdkKeyvalIsLower}}. Key values can be converted to upper or lower case
using \code{\link{gdkKeyvalToUpper}} and \code{\link{gdkKeyvalToLower}}.
  
When it makes sense, key values can be converted to and from
Unicode characters with \code{\link{gdkKeyvalToUnicode}} and \code{\link{gdkUnicodeToKeyval}}.
  
One \code{\link{GdkKeymap}} object exists for each user display. \code{\link{gdkKeymapGetDefault}}
returns the \code{\link{GdkKeymap}} for the default display; to obtain keymaps for other
displays, use \code{\link{gdkKeymapGetForDisplay}}. A keymap
is a mapping from \code{\link{GdkKeymapKey}} to key values. You can think of a \code{\link{GdkKeymapKey}}
as a representation of a symbol printed on a physical keyboard key. That is, it
contains three pieces of information. First, it contains the hardware keycode;
this is an identifying number for a physical key. Second, it contains the
\dfn{level} of the key. The level indicates which symbol on the
key will be used, in a vertical direction. So on a standard US keyboard, the key
with the number "1" on it also has the exclamation point ("!") character on
it. The level indicates whether to use the "1" or the "!" symbol.  The letter
keys are considered to have a lowercase letter at level 0, and an uppercase
letter at level 1, though only the uppercase letter is printed.  Third, the
\code{\link{GdkKeymapKey}} contains a group; groups are not used on standard US keyboards,
but are used in many other countries. On a keyboard with groups, there can be 3
or 4 symbols printed on a single key. The group indicates movement in a
horizontal direction. Usually groups are used for two different languages.  In
group 0, a key might have two English characters, and in group 1 it might have
two Hebrew characters. The Hebrew characters will be printed on the key next to
the English characters.
  
In order to use a keymap to interpret a key event, it's necessary to first
convert the keyboard state into an effective group and level. This is done via a
set of rules that varies widely according to type of keyboard and user
configuration. The function \code{\link{gdkKeymapTranslateKeyboardState}} accepts a
keyboard state -- consisting of hardware keycode pressed, active modifiers, and
active group -- applies the appropriate rules, and returns the group/level to be
used to index the keymap, along with the modifiers which did not affect the
group and level. i.e. it returns "unconsumed modifiers." The keyboard group may
differ from the effective group used for keymap lookups because some keys don't
have multiple groups - e.g. the Enter key is always in group 0 regardless of
keyboard state.
  
Note that \code{\link{gdkKeymapTranslateKeyboardState}} also returns the keyval, i.e. it
goes ahead and performs the keymap lookup in addition to telling you which
effective group/level values were used for the lookup.  \code{\link{GdkEventKey}} already
contains this keyval, however, so you don't normally need to call
\code{\link{gdkKeymapTranslateKeyboardState}} just to get the keyval.}
\section{Structures}{\describe{
\item{\verb{GdkKeymap}}{
A \code{GdkKeymap} defines the translation from keyboard state
(including a hardware key, a modifier mask, and active keyboard group)
to a keyval. This translation has two phases. The first phase is
to determine the effective keyboard group and level for the keyboard
state; the second phase is to look up the keycode/group/level triplet
in the keymap and see what keyval it corresponds to.

}
\item{\verb{GdkKeymapKey}}{
A \code{GdkKeymapKey} is a hardware key that can
be mapped to a keyval.
\strong{\verb{GdkKeymapKey} is a \link{transparent-type}.}

\describe{
\item{\code{keycode}}{the hardware keycode. This is an identifying number for a
physical key.}
\item{\code{group}}{indicates movement in a horizontal direction. Usually groups are used
for two different languages. In group 0, a key might have two English
characters, and in group 1 it might have two Hebrew characters. The Hebrew
characters will be printed on the key next to the English characters.}
\item{\code{level}}{indicates which symbol on the key will be used, in a vertical direction.  So on a standard US keyboard, the key with the number "1" on it also has the
exclamation point ("!") character on it. The level indicates whether to use
the "1" or the "!" symbol. The letter keys are considered to have a lowercase
letter at level 0, and an uppercase letter at level 1, though only the
uppercase letter is printed.}
}

}
}}
\section{Signals}{\describe{
\item{\code{direction-changed(keymap, user.data)}}{
The ::direction-changed signal gets emitted when the direction of
the keymap changes.
  Since 2.0

\describe{
\item{\code{keymap}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{keys-changed(keymap, user.data)}}{
The ::keys-changed signal is emitted when the mapping represented by
\code{keymap} changes.
  Since 2.2

\describe{
\item{\code{keymap}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{state-changed(keymap, user.data)}}{
The ::state-changed signal is emitted when the state of the
keyboard changes, e.g when Caps Lock is turned on or off.
See \code{\link{gdkKeymapGetCapsLockState}}.
  Since 2.16

\describe{
\item{\code{keymap}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Keyboard-Handling.html}}
\note{The keyval constants exist in RGtk2 as .gdkKeyvalName, so \code{.gdkPlus} for \kbd{plus}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
