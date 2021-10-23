\alias{GtkSettings}
\alias{GtkSettingsValue}
\name{GtkSettings}
\title{Settings}
\description{Sharing settings between applications}
\section{Methods and Functions}{
\code{\link{gtkSettingsGetDefault}()}\cr
\code{\link{gtkSettingsGetForScreen}(screen)}\cr
\code{\link{gtkSettingsInstallProperty}(pspec)}\cr
\code{\link{gtkSettingsInstallPropertyParser}(pspec, parser)}\cr
\code{\link{gtkRcPropertyParseColor}(pspec, gstring)}\cr
\code{\link{gtkRcPropertyParseEnum}(pspec, gstring)}\cr
\code{\link{gtkRcPropertyParseFlags}(pspec, gstring)}\cr
\code{\link{gtkRcPropertyParseRequisition}(pspec, gstring)}\cr
\code{\link{gtkRcPropertyParseBorder}(pspec, gstring)}\cr
\code{\link{gtkSettingsSetPropertyValue}(object, name, svalue)}\cr
\code{\link{gtkSettingsSetStringProperty}(object, name, v.string, origin)}\cr
\code{\link{gtkSettingsSetLongProperty}(object, name, v.long, origin)}\cr
\code{\link{gtkSettingsSetDoubleProperty}(object, name, v.double, origin)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GtkSettings}}
\section{Detailed Description}{GtkSettings provide a mechanism to share global settings between applications.
On the X window system, this sharing is realized by an XSettings 
manager that is usually part of the desktop environment, along with utilities
that let the user change these settings. In the absence of an Xsettings manager,
settings can also be specified in RC files.
  
Applications can override system-wide settings with \code{\link{gtkSettingsSetStringProperty}},
\code{\link{gtkSettingsSetLongProperty}}, etc. This should be restricted to special
cases though; GtkSettings are not meant as an application configuration
facility. When doing so, you need to be aware that settings that are specific
to individual widgets may not be available before the widget type has been
realized at least once. The following example demonstrates a way to do this:
\preformatted{  gtk_init (&argc, &argv);
  /* make sure the type is realized */
  g_type_class_unref (g_type_class_ref (GTK_TYPE_IMAGE_MENU_ITEM));
  g_object_set (gtk_settings_get_default (), "gtk-menu-images", FALSE, NULL);
}
  
There is one GtkSettings instance per screen. It can be obtained with
\code{\link{gtkSettingsGetForScreen}}, but in many cases, it is more convenient
to use \code{\link{gtkWidgetGetSettings}}. \code{\link{gtkSettingsGetDefault}} returns the
GtkSettings instance for the default screen.}
\section{Structures}{\describe{
\item{\verb{GtkSettings}}{
\emph{undocumented
}

}
\item{\verb{GtkSettingsValue}}{
\emph{undocumented
}
\strong{\verb{GtkSettingsValue} is a \link{transparent-type}.}

}
}}
\section{Properties}{\describe{
\item{\verb{color-hash} [GHashTable : *           : Read]}{

Holds a hash table representation of the \verb{"gtk-color-scheme"}
setting, mapping color names to \code{\link{GdkColor}}s.
  Since 2.10

}
\item{\verb{gtk-alternative-button-order} [logical : Read / Write]}{

Whether buttons in dialogs should use the alternative button order.  Default value: FALSE

}
\item{\verb{gtk-alternative-sort-arrows} [logical : Read / Write]}{

Controls the direction of the sort indicators in sorted list and tree
views. By default an arrow pointing down means the column is sorted
in ascending order. When set to \code{TRUE}, this order will be inverted.
  Default value: FALSE  Since 2.12

}
\item{\verb{gtk-auto-mnemonics} [logical : Read / Write]}{

Whether mnemonics should be automatically shown and hidden when the user
presses the mnemonic activator.
  Default value: FALSE  Since 2.20

}
\item{\verb{gtk-button-images} [logical : Read / Write]}{

Whether images should be shown on buttons.  Default value: TRUE

}
\item{\verb{gtk-can-change-accels} [logical : Read / Write]}{

Whether menu accelerators can be changed by pressing a key over the menu item.  Default value: FALSE

}
\item{\verb{gtk-color-palette} [character : *                : Read / Write]}{

Palette to use in the color selector.  Default value: "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90"

}
\item{\verb{gtk-color-scheme} [character : *                : Read / Write]}{

A palette of named colors for use in themes. The format of the string is
\preformatted{name1: color1
name2: color2
...
}
Color names must be acceptable as identifiers in the
gtkrc syntax, and
color specifications must be in the format accepted by
\code{\link{gdkColorParse}}.
  
Note that due to the way the color tables from different sources are
merged, color specifications will be converted to hexadecimal form
when getting this property.
  
Starting with GTK+ 2.12, the entries can alternatively be separated
by ';' instead of newlines:
\preformatted{name1: color1; name2: color2; ...
}
  Default value: ""  Since 2.10

}
\item{\verb{gtk-cursor-blink} [logical : Read / Write]}{

Whether the cursor should blink.
  
Also see the \verb{"gtk-cursor-blink-timeout"} setting,
which allows more flexible control over cursor blinking.
  Default value: TRUE

}
\item{\verb{gtk-cursor-blink-time} [integer : Read / Write]}{

Length of the cursor blink cycle, in milliseconds.  Allowed values: >= 100  Default value: 1200

}
\item{\verb{gtk-cursor-blink-timeout} [integer : Read / Write]}{

Time after which the cursor stops blinking, in seconds.
The timer is reset after each user interaction.
  
Setting this to zero has the same effect as setting
\verb{"gtk-cursor-blink"} to \code{FALSE}.
  Allowed values: >= 1  Default value: 2147483647  Since 2.12

}
\item{\verb{gtk-cursor-theme-name} [character : *                : Read / Write]}{

Name of the cursor theme to use, or NULL to use the default theme.  Default value: NULL

}
\item{\verb{gtk-cursor-theme-size} [integer : Read / Write]}{

Size to use for cursors, or 0 to use the default size.  Allowed values: [0,128]  Default value: 0

}
\item{\verb{gtk-dnd-drag-threshold} [integer : Read / Write]}{

Number of pixels the cursor can move before dragging.  Allowed values: >= 1  Default value: 8

}
\item{\verb{gtk-double-click-distance} [integer : Read / Write]}{

Maximum distance allowed between two clicks for them to be considered a double click (in pixels).  Allowed values: >= 0  Default value: 5

}
\item{\verb{gtk-double-click-time} [integer : Read / Write]}{

Maximum time allowed between two clicks for them to be considered a double click (in milliseconds).  Allowed values: >= 0  Default value: 250

}
\item{\verb{gtk-enable-accels} [logical : Read / Write]}{

Whether menu items should have visible accelerators which can be
activated.
  Default value: TRUE  Since 2.12

}
\item{\verb{gtk-enable-animations} [logical : Read / Write]}{

Whether to enable toolkit-wide animations.  Default value: TRUE

}
\item{\verb{gtk-enable-event-sounds} [logical : Read / Write]}{

Whether to play any event sounds at all.
  
See the Sound Theme spec (\url{http://www.freedesktop.org/wiki/Specifications/sound-theme-spec})
for more information on event sounds and sound themes.
  
GTK+ itself does not support event sounds, you have to use a loadable
module like the one that comes with libcanberra.
  Default value: TRUE  Since 2.14

}
\item{\verb{gtk-enable-input-feedback-sounds} [logical : Read / Write]}{

Whether to play event sounds as feedback to user input.
  
See the Sound Theme spec (\url{http://www.freedesktop.org/wiki/Specifications/sound-theme-spec})
for more information on event sounds and sound themes.
  
GTK+ itself does not support event sounds, you have to use a loadable
module like the one that comes with libcanberra.
  Default value: TRUE  Since 2.14

}
\item{\verb{gtk-enable-mnemonics} [logical : Read / Write]}{

Whether labels and menu items should have visible mnemonics which
can be activated.
  Default value: TRUE  Since 2.12

}
\item{\verb{gtk-enable-tooltips} [logical : Read / Write]}{

Whether tooltips should be shown on widgets.
  Default value: TRUE  Since 2.14

}
\item{\verb{gtk-entry-password-hint-timeout} [numeric : Read / Write]}{

How long to show the last input character in hidden
entries. This value is in milliseconds. 0 disables showing the
last char. 600 is a good value for enabling it.
  Default value: 0  Since 2.10

}
\item{\verb{gtk-entry-select-on-focus} [logical : Read / Write]}{

Whether to select the contents of an entry when it is focused.  Default value: TRUE

}
\item{\verb{gtk-error-bell} [logical : Read / Write]}{

When \code{TRUE}, keyboard navigation and other input-related errors
will cause a beep. Since the error bell is implemented using
\code{\link{gdkWindowBeep}}, the windowing system may offer ways to
configure the error bell in many ways, such as flashing the
window or similar visual effects.
  Default value: TRUE  Since 2.12

}
\item{\verb{gtk-fallback-icon-theme} [character : *                : Read / Write]}{

Name of a icon theme to fall back to.  Default value: NULL

}
\item{\verb{gtk-file-chooser-backend} [character : *                : Read / Write]}{

Name of the GtkFileChooser backend to use by default.  Default value: NULL

}
\item{\verb{gtk-font-name} [character : *                : Read / Write]}{

Name of default font to use.  Default value: "Sans 10"

}
\item{\verb{gtk-fontconfig-timestamp} [numeric : Read / Write]}{

Timestamp of current fontconfig configuration.  Default value: 0

}
\item{\verb{gtk-icon-sizes} [character : *                : Read / Write]}{

A list of icon sizes. The list is separated by colons, and
item has the form:
  \\var{size-name} = \\var{width} , \\var{height}
  
E.g. "gtk-menu=16,16:gtk-button=20,20:gtk-dialog=48,48".
GTK+ itself use the following named icon sizes: gtk-menu,
gtk-button, gtk-small-toolbar, gtk-large-toolbar, gtk-dnd,
gtk-dialog. Applications can register their own named icon
sizes with \code{\link{gtkIconSizeRegister}}.
  Default value: NULL

}
\item{\verb{gtk-icon-theme-name} [character : *                : Read / Write]}{

Name of icon theme to use.  Default value: "hicolor"

}
\item{\verb{gtk-im-module} [character : *                : Read / Write]}{

Which IM (input method) module should be used by default. This is the
input method that will be used if the user has not explicitly chosen
another input method from the IM context menu.
  
See \code{\link{GtkIMContext}} and see the \verb{"gtk-show-input-method-menu"} property.
  Default value: NULL

}
\item{\verb{gtk-key-theme-name} [character : *                : Read / Write]}{

Name of key theme RC file to load.  Default value: NULL

}
\item{\verb{gtk-keynav-cursor-only} [logical : Read / Write]}{

When \code{TRUE}, keyboard navigation should be able to reach all widgets
by using the cursor keys only. Tab, Shift etc. keys can't be expected
to be present on the used input device.
  Default value: FALSE  Since 2.12

}
\item{\verb{gtk-keynav-wrap-around} [logical : Read / Write]}{

When \code{TRUE}, some widgets will wrap around when doing keyboard
navigation, such as menus, menubars and notebooks.
  Default value: TRUE  Since 2.12

}
\item{\verb{gtk-label-select-on-focus} [logical : Read / Write]}{

Whether to select the contents of a selectable label when it is focused.  Default value: TRUE

}
\item{\verb{gtk-menu-bar-accel} [character : *                : Read / Write]}{

Keybinding to activate the menu bar.  Default value: "F10"

}
\item{\verb{gtk-menu-bar-popup-delay} [integer : Read / Write]}{

Delay before the submenus of a menu bar appear.  Allowed values: >= 0  Default value: 0

}
\item{\verb{gtk-menu-images} [logical : Read / Write]}{

Whether images should be shown in menus.  Default value: TRUE

}
\item{\verb{gtk-menu-popdown-delay} [integer : Read / Write]}{

The time before hiding a submenu when the pointer is moving towards the submenu.  Allowed values: >= 0  Default value: 1000

}
\item{\verb{gtk-menu-popup-delay} [integer : Read / Write]}{

Minimum time the pointer must stay over a menu item before the submenu appear.  Allowed values: >= 0  Default value: 225

}
\item{\verb{gtk-modules} [character : *                : Read / Write]}{

List of currently active GTK modules.  Default value: NULL

}
\item{\verb{gtk-print-backends} [character : *                : Read / Write]}{

A comma-separated list of print backends to use in the print
dialog. Available print backends depend on the GTK+ installation,
and may include "file", "cups", "lpr" or "papi".
  Default value: "file,lpr"  Since 2.10

}
\item{\verb{gtk-print-preview-command} [character : *                : Read / Write]}{

A command to run for displaying the print preview. The command
should contain a \code{f} placeholder, which will get replaced by
the path to the pdf file. The command may also contain a \code{s}
placeholder, which will get replaced by the path to a file
containing the print settings in the format produced by
\code{\link{gtkPrintSettingsToFile}}.
  
The preview application is responsible for removing the pdf file
and the print settings file when it is done.
  Default value: "evince --unlink-tempfile --preview --print-settings \%s \%f"  Since 2.10

}
\item{\verb{gtk-recent-files-limit} [integer : Read / Write]}{

The number of recently used files that should be displayed by default by
\code{\link{GtkRecentChooser}} implementations and by the \code{\link{GtkFileChooser}}. A value of
-1 means every recently used file stored.
  Allowed values: >= -1  Default value: 50  Since 2.12

}
\item{\verb{gtk-recent-files-max-age} [integer : Read / Write]}{

The maximum age, in days, of the items inside the recently used
resources list. Items older than this setting will be excised
from the list. If set to 0, the list will always be empty; if
set to -1, no item will be removed.
  Allowed values: >= -1  Default value: 30  Since 2.14

}
\item{\verb{gtk-scrolled-window-placement} [\code{\link{GtkCornerType}} : Read / Write]}{

Where the contents of scrolled windows are located with respect to the
scrollbars, if not overridden by the scrolled window's own placement.
  Default value: GTK_CORNER_TOP_LEFT  Since 2.10

}
\item{\verb{gtk-show-input-method-menu} [logical : Read / Write]}{

Whether the context menus of entries and text views should offer to change the input method.  Default value: TRUE

}
\item{\verb{gtk-show-unicode-menu} [logical : Read / Write]}{

Whether the context menus of entries and text views should offer to insert control characters.  Default value: TRUE

}
\item{\verb{gtk-sound-theme-name} [character : *                : Read / Write]}{

The XDG sound theme to use for event sounds.
  
See the Sound Theme spec (\url{http://www.freedesktop.org/wiki/Specifications/sound-theme-spec})
for more information on event sounds and sound themes.
  
GTK+ itself does not support event sounds, you have to use a loadable
module like the one that comes with libcanberra.
  Default value: "freedesktop"  Since 2.14

}
\item{\verb{gtk-split-cursor} [logical : Read / Write]}{

Whether two cursors should be displayed for mixed left-to-right and right-to-left text.  Default value: TRUE

}
\item{\verb{gtk-theme-name} [character : *                : Read / Write]}{

Name of theme RC file to load.  Default value: "Raleigh"

}
\item{\verb{gtk-timeout-expand} [integer : Read / Write]}{

Expand value for timeouts, when a widget is expanding a new region.  Allowed values: >= 0  Default value: 500

}
\item{\verb{gtk-timeout-initial} [integer : Read / Write]}{

Starting value for timeouts, when button is pressed.  Allowed values: >= 0  Default value: 200

}
\item{\verb{gtk-timeout-repeat} [integer : Read / Write]}{

Repeat value for timeouts, when button is pressed.  Allowed values: >= 0  Default value: 20

}
\item{\verb{gtk-toolbar-icon-size} [\code{\link{GtkIconSize}} : Read / Write]}{

The size of icons in default toolbars.  Default value: GTK_ICON_SIZE_LARGE_TOOLBAR

}
\item{\verb{gtk-toolbar-style} [\code{\link{GtkToolbarStyle}} : Read / Write]}{

Whether default toolbars have text only, text and icons, icons only, etc.  Default value: GTK_TOOLBAR_BOTH

}
\item{\verb{gtk-tooltip-browse-mode-timeout} [integer : Read / Write]}{

Amount of time, in milliseconds, after which the browse mode
will be disabled.
  
See \verb{"gtk-tooltip-browse-timeout"} for more information
about browse mode.
  Allowed values: >= 0  Default value: 500  Since 2.12

}
\item{\verb{gtk-tooltip-browse-timeout} [integer : Read / Write]}{

Controls the time after which tooltips will appear when
browse mode is enabled, in milliseconds.
  
Browse mode is enabled when the mouse pointer moves off an object
where a tooltip was currently being displayed. If the mouse pointer
hits another object before the browse mode timeout expires (see
\verb{"gtk-tooltip-browse-mode-timeout"}), it will take the
amount of milliseconds specified by this setting to popup the tooltip
for the new object.
  Allowed values: >= 0  Default value: 60  Since 2.12

}
\item{\verb{gtk-tooltip-timeout} [integer : Read / Write]}{

Time, in milliseconds, after which a tooltip could appear if the
cursor is hovering on top of a widget.
  Allowed values: >= 0  Default value: 500  Since 2.12

}
\item{\verb{gtk-touchscreen-mode} [logical : Read / Write]}{

When \code{TRUE}, there are no motion notify events delivered on this screen,
and widgets can't use the pointer hovering them for any essential
functionality.
  Default value: FALSE  Since 2.10

}
\item{\verb{gtk-xft-antialias} [integer : Read / Write]}{

Whether to antialias Xft fonts; 0=no, 1=yes, -1=default.  Allowed values: [-1,1]  Default value: -1

}
\item{\verb{gtk-xft-dpi} [integer : Read / Write]}{

Resolution for Xft, in 1024 * dots/inch. -1 to use default value.  Allowed values: [-1,1048576]  Default value: -1

}
\item{\verb{gtk-xft-hinting} [integer : Read / Write]}{

Whether to hint Xft fonts; 0=no, 1=yes, -1=default.  Allowed values: [-1,1]  Default value: -1

}
\item{\verb{gtk-xft-hintstyle} [character : *                : Read / Write]}{

What degree of hinting to use; hintnone, hintslight, hintmedium, or hintfull.  Default value: NULL

}
\item{\verb{gtk-xft-rgba} [character : *                : Read / Write]}{

Type of subpixel antialiasing; none, rgb, bgr, vrgb, vbgr.  Default value: NULL

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSettings.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
