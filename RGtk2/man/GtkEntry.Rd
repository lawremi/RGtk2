\alias{GtkEntry}
\alias{gtkEntry}
\alias{GtkEntryIconPosition}
\name{GtkEntry}
\title{GtkEntry}
\description{A single line text entry field}
\section{Methods and Functions}{
\code{\link{gtkEntryNew}(show = TRUE)}\cr
\code{\link{gtkEntryNewWithBuffer}(buffer, show = TRUE)}\cr
\code{\link{gtkEntryNewWithMaxLength}(max = 0, show = TRUE)}\cr
\code{\link{gtkEntryGetBuffer}(object)}\cr
\code{\link{gtkEntrySetBuffer}(object, buffer)}\cr
\code{\link{gtkEntrySetText}(object, text)}\cr
\code{\link{gtkEntryAppendText}(object, text)}\cr
\code{\link{gtkEntryPrependText}(object, text)}\cr
\code{\link{gtkEntrySetPosition}(object, position)}\cr
\code{\link{gtkEntryGetText}(object)}\cr
\code{\link{gtkEntryGetTextLength}(object)}\cr
\code{\link{gtkEntrySelectRegion}(object, start, end)}\cr
\code{\link{gtkEntrySetVisibility}(object, visible)}\cr
\code{\link{gtkEntrySetInvisibleChar}(object, ch)}\cr
\code{\link{gtkEntryUnsetInvisibleChar}(object)}\cr
\code{\link{gtkEntrySetEditable}(object, editable)}\cr
\code{\link{gtkEntrySetMaxLength}(object, max)}\cr
\code{\link{gtkEntryGetActivatesDefault}(object)}\cr
\code{\link{gtkEntryGetHasFrame}(object)}\cr
\code{\link{gtkEntryGetInnerBorder}(object)}\cr
\code{\link{gtkEntryGetWidthChars}(object)}\cr
\code{\link{gtkEntrySetActivatesDefault}(object, setting)}\cr
\code{\link{gtkEntrySetHasFrame}(object, setting)}\cr
\code{\link{gtkEntrySetInnerBorder}(object, border = NULL)}\cr
\code{\link{gtkEntrySetWidthChars}(object, n.chars)}\cr
\code{\link{gtkEntryGetInvisibleChar}(object)}\cr
\code{\link{gtkEntrySetAlignment}(object, xalign)}\cr
\code{\link{gtkEntryGetAlignment}(object)}\cr
\code{\link{gtkEntrySetOverwriteMode}(object, overwrite)}\cr
\code{\link{gtkEntryGetOverwriteMode}(object)}\cr
\code{\link{gtkEntryGetLayout}(object)}\cr
\code{\link{gtkEntryGetLayoutOffsets}(object)}\cr
\code{\link{gtkEntryLayoutIndexToTextIndex}(object, layout.index)}\cr
\code{\link{gtkEntryTextIndexToLayoutIndex}(object, text.index)}\cr
\code{\link{gtkEntryGetMaxLength}(object)}\cr
\code{\link{gtkEntryGetVisibility}(object)}\cr
\code{\link{gtkEntrySetCompletion}(object, completion)}\cr
\code{\link{gtkEntryGetCompletion}(object)}\cr
\code{\link{gtkEntrySetCursorHadjustment}(object, adjustment)}\cr
\code{\link{gtkEntryGetCursorHadjustment}(object)}\cr
\code{\link{gtkEntrySetProgressFraction}(object, fraction)}\cr
\code{\link{gtkEntryGetProgressFraction}(object)}\cr
\code{\link{gtkEntrySetProgressPulseStep}(object, fraction)}\cr
\code{\link{gtkEntryGetProgressPulseStep}(object)}\cr
\code{\link{gtkEntryProgressPulse}(object)}\cr
\code{\link{gtkEntrySetIconFromPixbuf}(object, icon.pos, pixbuf = NULL)}\cr
\code{\link{gtkEntrySetIconFromStock}(object, icon.pos, stock.id = NULL)}\cr
\code{\link{gtkEntrySetIconFromIconName}(object, icon.pos, icon.name = NULL)}\cr
\code{\link{gtkEntrySetIconFromGicon}(object, icon.pos, icon = NULL)}\cr
\code{\link{gtkEntryGetIconStorageType}(object, icon.pos)}\cr
\code{\link{gtkEntryGetIconPixbuf}(object, icon.pos)}\cr
\code{\link{gtkEntryGetIconStock}(object, icon.pos)}\cr
\code{\link{gtkEntryGetIconName}(object, icon.pos)}\cr
\code{\link{gtkEntryGetIconGicon}(object, icon.pos)}\cr
\code{\link{gtkEntrySetIconActivatable}(object, icon.pos, activatable)}\cr
\code{\link{gtkEntryGetIconActivatable}(object, icon.pos)}\cr
\code{\link{gtkEntrySetIconSensitive}(object, icon.pos, sensitive)}\cr
\code{\link{gtkEntryGetIconSensitive}(object, icon.pos)}\cr
\code{\link{gtkEntryGetIconAtPos}(object, x, y)}\cr
\code{\link{gtkEntrySetIconTooltipText}(object, icon.pos, tooltip = NULL)}\cr
\code{\link{gtkEntryGetIconTooltipText}(object, icon.pos)}\cr
\code{\link{gtkEntrySetIconTooltipMarkup}(object, icon.pos, tooltip = NULL)}\cr
\code{\link{gtkEntryGetIconTooltipMarkup}(object, icon.pos)}\cr
\code{\link{gtkEntrySetIconDragSource}(object, icon.pos, target.list, actions)}\cr
\code{\link{gtkEntryGetCurrentIconDragSource}(object)}\cr
\code{\link{gtkEntryGetIconWindow}(object, icon.pos)}\cr
\code{\link{gtkEntryGetTextWindow}(object)}\cr
\code{gtkEntry(max = 0, buffer, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkEntry
                           +----GtkSpinButton}}
\section{Interfaces}{GtkEntry implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkEditable}} and  \code{\link{GtkCellEditable}}.}
\section{Detailed Description}{The \code{\link{GtkEntry}} widget is a single line text entry
widget. A fairly large set of key bindings are supported
by default. If the entered text is longer than the allocation
of the widget, the widget will scroll so that the cursor
position is visible.
  
When using an entry for passwords and other sensitive information,
it can be put into "password mode" using \code{\link{gtkEntrySetVisibility}}.
In this mode, entered text is displayed using a 'invisible' character.
By default, GTK+ picks the best invisible character that is available
in the current font, but it can be changed with
\code{\link{gtkEntrySetInvisibleChar}}. Since 2.16, GTK+ displays a warning
when Caps Lock or input methods might interfere with entering text in
a password entry. The warning can be turned off with the
\verb{"caps-lock-warning"} property.
  
Since 2.16, GtkEntry has the ability to display progress or activity
information behind the text. To make an entry display such information,
use \code{\link{gtkEntrySetProgressFraction}} or \code{\link{gtkEntrySetProgressPulseStep}}.
  
Additionally, GtkEntry can show icons at either side of the entry. These
icons can be activatable by clicking, can be set up as drag source and
can have tooltips. To add an icon, use \code{\link{gtkEntrySetIconFromGicon}} or
one of the various other functions that set an icon from a stock id, an
icon name or a pixbuf. To trigger an action when the user clicks an icon,
connect to the \verb{"icon-press"} signal. To allow DND operations
from an icon, use \code{\link{gtkEntrySetIconDragSource}}. To set a tooltip on
an icon, use \code{\link{gtkEntrySetIconTooltipText}} or the corresponding function
for markup.
  
Note that functionality or information that is only available by clicking
on an icon in an entry may not be accessible at all to users which are not
able to use a mouse or other pointing device. It is therefore recommended
that any such functionality should also be available by other means, e.g.
via the context menu of the entry.}
\section{Structures}{\describe{\item{\verb{GtkEntry}}{
The \code{\link{GtkEntry}} struct contains only private data.

}}}
\section{Convenient Construction}{\code{gtkEntry} is the result of collapsing the constructors of \code{GtkEntry} (\code{\link{gtkEntryNew}}, \code{\link{gtkEntryNewWithMaxLength}}, \code{\link{gtkEntryNewWithBuffer}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{GtkEntryIconPosition}}{
Specifies the side of the entry at which an icon is placed.

\describe{
\item{\verb{primary}}{At the beginning of the entry (depending on the text direction).}
\item{\verb{secondary}}{At the end of the entry (depending on the text direction).}
}

}}}
\section{Signals}{\describe{
\item{\code{activate(entry, user.data)}}{
A  keybinding signal
which gets emitted when the user activates the entry.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control activation
programmatically.
  
The default bindings for this signal are all forms of the Enter key.

\describe{
\item{\code{entry}}{The entry on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{backspace(entry, user.data)}}{
The ::backspace signal is a
keybinding signal
which gets emitted when the user asks for it.
  
The default bindings for this signal are
Backspace and Shift-Backspace.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{copy-clipboard(entry, user.data)}}{
The ::copy-clipboard signal is a
keybinding signal
which gets emitted to copy the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-c and Ctrl-Insert.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cut-clipboard(entry, user.data)}}{
The ::cut-clipboard signal is a
keybinding signal
which gets emitted to cut the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-x and Shift-Delete.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{delete-from-cursor(entry, type, count, user.data)}}{
The ::delete-from-cursor signal is a
keybinding signal
which gets emitted when the user initiates a text deletion.
  
If the \code{type} is \code{GTK_DELETE_CHARS}, GTK+ deletes the selection
if there is one, otherwise it deletes the requested number
of characters.
  
The default bindings for this signal are
Delete for deleting a character and Ctrl-Delete for
deleting a word.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{type}}{the granularity of the deletion, as a \code{\link{GtkDeleteType}}}
\item{\code{count}}{the number of \code{type} units to delete}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{icon-press(entry, icon.pos, event, user.data)}}{
The ::icon-press signal is emitted when an activatable icon
is clicked.
  Since 2.16

\describe{
\item{\code{entry}}{The entry on which the signal is emitted}
\item{\code{icon.pos}}{The position of the clicked icon}
\item{\code{event}}{the button press event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{icon-release(entry, icon.pos, event, user.data)}}{
The ::icon-release signal is emitted on the button release from a
mouse click over an activatable icon.
  Since 2.16

\describe{
\item{\code{entry}}{The entry on which the signal is emitted}
\item{\code{icon.pos}}{The position of the clicked icon}
\item{\code{event}}{the button release event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{insert-at-cursor(entry, string, user.data)}}{
The ::insert-at-cursor signal is a
keybinding signal
which gets emitted when the user initiates the insertion of a
fixed string at the cursor.
  
This signal has no default bindings.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{string}}{the string to insert}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(entry, step, count, extend.selection, user.data)}}{
The ::move-cursor signal is a
keybinding signal
which gets emitted when the user initiates a cursor movement.
If the cursor is not visible in \code{entry}, this signal causes
the viewport to be moved instead.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control the cursor
programmatically.
  
The default bindings for this signal come in two variants,
the variant with the Shift modifier extends the selection,
the variant without the Shift modifer does not.
There are too many key combinations to list them all here.
\itemize{
\item 
\item 
\item 
}

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{step}}{the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{the number of \code{step} units to move}
\item{\code{extend.selection}}{\code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{paste-clipboard(entry, user.data)}}{
The ::paste-clipboard signal is a
keybinding signal
which gets emitted to paste the contents of the clipboard
into the text view.
  
The default bindings for this signal are
Ctrl-v and Shift-Insert.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{populate-popup(entry, menu, user.data)}}{
The ::populate-popup signal gets emitted before showing the
context menu of the entry.
  
If you need to add items to the context menu, connect
to this signal and append your menuitems to the \code{menu}.

\describe{
\item{\code{entry}}{The entry on which the signal is emitted}
\item{\code{menu}}{the menu that is being populated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{preedit-changed(entry, preedit, user.data)}}{
If an input method is used, the typed text will not immediately
be committed to the buffer. So if you are interested in the text,
connect to this signal.
  Since 2.20

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{preedit}}{the current preedit string}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-overwrite(entry, user.data)}}{
The ::toggle-overwrite signal is a
keybinding signal
which gets emitted to toggle the overwrite mode of the entry.
  
The default bindings for this signal is Insert.

\describe{
\item{\code{entry}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{activates-default} [logical : Read / Write]}{

Whether to activate the default widget (such as the default button in a dialog) when Enter is pressed.  Default value: FALSE

}
\item{\verb{buffer} [\code{\link{GtkEntryBuffer}} : *       : Read / Write / Construct]}{

Text buffer object which actually stores entry text.

}
\item{\verb{caps-lock-warning} [logical : Read / Write]}{

Whether password entries will show a warning when Caps Lock is on.
  
Note that the warning is shown using a secondary icon, and thus
does not work if you are using the secondary icon position for some
other purpose.
  Default value: TRUE  Since 2.16

}
\item{\verb{cursor-position} [integer : Read]}{

The current position of the insertion cursor in chars.  Allowed values: [0,65535]  Default value: 0

}
\item{\verb{editable} [logical : Read / Write]}{

Whether the entry contents can be edited.  Default value: TRUE

}
\item{\verb{has-frame} [logical : Read / Write]}{

FALSE removes outside bevel from entry.  Default value: TRUE

}
\item{\verb{im-module} [character : *                : Read / Write]}{

Which IM (input method) module should be used for this entry.
See \code{\link{GtkIMContext}}.
  
Setting this to a non-\code{NULL} value overrides the
system-wide IM module setting. See the GtkSettings
\verb{"gtk-im-module"} property.
  Default value: NULL  Since 2.16

}
\item{\verb{inner-border} [\code{\link{GtkBorder}} : *            : Read / Write]}{

Sets the text area's border between the text and the frame.
  Since 2.10

}
\item{\verb{invisible-char} [numeric : Read / Write]}{

The invisible character is used when masking entry contents (in
\\"password mode\\")"). When it is not explicitly set with the
\verb{"invisible-char"} property, GTK+ determines the character
to use from a list of possible candidates, depending on availability
in the current font.
  
This style property allows the theme to prepend a character
to the list of candidates.
  Default value: '*'  Since 2.18

}
\item{\verb{invisible-char-set} [logical : Read / Write]}{

Whether the invisible char has been set for the \code{\link{GtkEntry}}.
  Default value: FALSE  Since 2.16

}
\item{\verb{max-length} [integer : Read / Write]}{

Maximum number of characters for this entry. Zero if no maximum.  Allowed values: [0,65535]  Default value: 0

}
\item{\verb{overwrite-mode} [logical : Read / Write]}{

If text is overwritten when typing in the \code{\link{GtkEntry}}.
  Default value: FALSE  Since 2.14

}
\item{\verb{primary-icon-activatable} [logical : Read / Write]}{

Whether the primary icon is activatable.
  
GTK+ emits the \verb{"icon-press"} and \verb{"icon-release"}
signals only on sensitive, activatable icons.
  
Sensitive, but non-activatable icons can be used for purely
informational purposes.
  Default value: FALSE  Since 2.16

}
\item{\verb{primary-icon-gicon} [\code{\link{GIcon}} : *                : Read / Write]}{

The \code{\link{GIcon}} to use for the primary icon for the entry.
  Since 2.16

}
\item{\verb{primary-icon-name} [character : *                : Read / Write]}{

The icon name to use for the primary icon for the entry.
  Default value: NULL  Since 2.16

}
\item{\verb{primary-icon-pixbuf} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

A pixbuf to use as the primary icon for the entry.
  Since 2.16

}
\item{\verb{primary-icon-sensitive} [logical : Read / Write]}{

Whether the primary icon is sensitive.
  
An insensitive icon appears grayed out. GTK+ does not emit the
\verb{"icon-press"} and \verb{"icon-release"} signals and
does not allow DND from insensitive icons.
  
An icon should be set insensitive if the action that would trigger
when clicked is currently not available.
  Default value: TRUE  Since 2.16

}
\item{\verb{primary-icon-stock} [character : *                : Read / Write]}{

The stock id to use for the primary icon for the entry.
  Default value: NULL  Since 2.16

}
\item{\verb{primary-icon-storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation which is used for the primary icon of the entry.
  Default value: GTK_IMAGE_EMPTY  Since 2.16

}
\item{\verb{primary-icon-tooltip-markup} [character : *                : Read / Write]}{

The contents of the tooltip on the primary icon, which is marked up
with the Pango text markup
language.
  
Also see \code{\link{gtkEntrySetIconTooltipMarkup}}.
  Default value: NULL  Since 2.16

}
\item{\verb{primary-icon-tooltip-text} [character : *                : Read / Write]}{

The contents of the tooltip on the primary icon.
  
Also see \code{\link{gtkEntrySetIconTooltipText}}.
  Default value: NULL  Since 2.16

}
\item{\verb{progress-fraction} [numeric : Read / Write]}{

The current fraction of the task that's been completed.
  Allowed values: [0,1]  Default value: 0  Since 2.16

}
\item{\verb{progress-pulse-step} [numeric : Read / Write]}{

The fraction of total entry width to move the progress
bouncing block for each call to \code{\link{gtkEntryProgressPulse}}.
  Allowed values: [0,1]  Default value: 0.1  Since 2.16

}
\item{\verb{scroll-offset} [integer : Read]}{

Number of pixels of the entry scrolled off the screen to the left.  Allowed values: >= 0  Default value: 0

}
\item{\verb{secondary-icon-activatable} [logical : Read / Write]}{

Whether the secondary icon is activatable.
  
GTK+ emits the \verb{"icon-press"} and \verb{"icon-release"}
signals only on sensitive, activatable icons.
  
Sensitive, but non-activatable icons can be used for purely
informational purposes.
  Default value: FALSE  Since 2.16

}
\item{\verb{secondary-icon-gicon} [\code{\link{GIcon}} : *                : Read / Write]}{

The \code{\link{GIcon}} to use for the secondary icon for the entry.
  Since 2.16

}
\item{\verb{secondary-icon-name} [character : *                : Read / Write]}{

The icon name to use for the secondary icon for the entry.
  Default value: NULL  Since 2.16

}
\item{\verb{secondary-icon-pixbuf} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

An pixbuf to use as the secondary icon for the entry.
  Since 2.16

}
\item{\verb{secondary-icon-sensitive} [logical : Read / Write]}{

Whether the secondary icon is sensitive.
  
An insensitive icon appears grayed out. GTK+ does not emit the
\verb{"icon-press"} and \verb{"icon-release"} signals and
does not allow DND from insensitive icons.
  
An icon should be set insensitive if the action that would trigger
when clicked is currently not available.
  Default value: TRUE  Since 2.16

}
\item{\verb{secondary-icon-stock} [character : *                : Read / Write]}{

The stock id to use for the secondary icon for the entry.
  Default value: NULL  Since 2.16

}
\item{\verb{secondary-icon-storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation which is used for the secondary icon of the entry.
  Default value: GTK_IMAGE_EMPTY  Since 2.16

}
\item{\verb{secondary-icon-tooltip-markup} [character : *                : Read / Write]}{

The contents of the tooltip on the secondary icon, which is marked up
with the Pango text markup
language.
  
Also see \code{\link{gtkEntrySetIconTooltipMarkup}}.
  Default value: NULL  Since 2.16

}
\item{\verb{secondary-icon-tooltip-text} [character : *                : Read / Write]}{

The contents of the tooltip on the secondary icon.
  
Also see \code{\link{gtkEntrySetIconTooltipText}}.
  Default value: NULL  Since 2.16

}
\item{\verb{selection-bound} [integer : Read]}{

The position of the opposite end of the selection from the cursor in chars.  Allowed values: [0,65535]  Default value: 0

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Which kind of shadow to draw around the entry when
\verb{"has-frame"} is set to \code{TRUE}.
  Default value: GTK_SHADOW_IN  Since 2.12

}
\item{\verb{text} [character : *                : Read / Write]}{

The contents of the entry.  Default value: ""

}
\item{\verb{text-length} [numeric : Read]}{

The length of the text in the \code{\link{GtkEntry}}.
  Allowed values: <= 65535  Default value: 0  Since 2.14

}
\item{\verb{truncate-multiline} [logical : Read / Write]}{

When \code{TRUE}, pasted multi-line text is truncated to the first line.
  Default value: FALSE  Since 2.10

}
\item{\verb{visibility} [logical : Read / Write]}{

FALSE displays the "invisible char" instead of the actual text (password mode).  Default value: TRUE

}
\item{\verb{width-chars} [integer : Read / Write]}{

Number of characters to leave space for in the entry.  Allowed values: >= -1  Default value: -1

}
\item{\verb{xalign} [numeric : Read / Write]}{

The horizontal alignment, from 0 (left) to 1 (right).
Reversed for RTL layouts.
  Allowed values: [0,1]  Default value: 0  Since 2.4

}
}}
\section{Style Properties}{\describe{
\item{\verb{icon-prelight} [logical : Read]}{

The prelight style property determines whether activatable
icons prelight on mouseover.
  Default value: TRUE  Since 2.16

}
\item{\verb{inner-border} [\code{\link{GtkBorder}} : *            : Read]}{

Sets the text area's border between the text and the frame.
  Since 2.10

}
\item{\verb{invisible-char} [numeric : Read]}{

The invisible character is used when masking entry contents (in
\\"password mode\\")"). When it is not explicitly set with the
\verb{"invisible-char"} property, GTK+ determines the character
to use from a list of possible candidates, depending on availability
in the current font.
  
This style property allows the theme to prepend a character
to the list of candidates.
  Default value: 0  Since 2.18

}
\item{\verb{progress-border} [\code{\link{GtkBorder}} : *            : Read]}{

The border around the progress bar in the entry.
  Since 2.16

}
\item{\verb{state-hint} [logical : Read]}{

Indicates whether to pass a proper widget state when
drawing the shadow and the widget background.
  Default value: FALSE  Since 2.16

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkEntry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
