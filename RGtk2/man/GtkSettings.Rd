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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkSettings}}
\section{Structures}{\describe{
\item{\code{GtkSettings}}{\emph{undocumented
}}
\item{\code{GtkSettingsValue}}{

\strong{\code{GtkSettingsValue} is a \link{transparent-type}.}

}
}}
\section{Properties}{\describe{
\item{\code{gtk-alternative-button-order} [logical : Read / Write]}{

Whether buttons in dialogs should use the alternative button order.  Default value: FALSE

}
\item{\code{gtk-button-images} [logical : Read / Write]}{

Whether stock icons should be shown in buttons.  Default value: TRUE

}
\item{\code{gtk-can-change-accels} [logical : Read / Write]}{

Whether menu accelerators can be changed by pressing a key over the menu item.  Default value: FALSE

}
\item{\code{gtk-color-palette} [character : Read / Write]}{

Palette to use in the color selector.  Default value: "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90"

}
\item{\code{gtk-cursor-blink} [logical : Read / Write]}{

Whether the cursor should blink.  Default value: TRUE

}
\item{\code{gtk-cursor-blink-time} [integer : Read / Write]}{

Length of the cursor blink cycle, in milleseconds.  Allowed values: >= 100  Default value: 1200

}
\item{\code{gtk-cursor-theme-name} [character : Read / Write]}{

Name of the cursor theme to use.  Default value: NULL

}
\item{\code{gtk-cursor-theme-size} [integer : Read / Write]}{

Size to use for cursors.  Allowed values: [0,128]  Default value: 24

}
\item{\code{gtk-dnd-drag-threshold} [integer : Read / Write]}{

Number of pixels the cursor can move before dragging.  Allowed values: >= 1  Default value: 8

}
\item{\code{gtk-double-click-distance} [integer : Read / Write]}{

Maximum distance allowed between two clicks for them to be considered a double click (in pixels).  Allowed values: >= 0  Default value: 5

}
\item{\code{gtk-double-click-time} [integer : Read / Write]}{

Maximum time allowed between two clicks for them to be considered a double click (in milliseconds).  Allowed values: >= 0  Default value: 250

}
\item{\code{gtk-entry-select-on-focus} [logical : Read / Write]}{

Whether to select the contents of an entry when it is focused.  Default value: TRUE

}
\item{\code{gtk-font-name} [character : Read / Write]}{

Name of default font to use.  Default value: "Sans 10"

}
\item{\code{gtk-icon-sizes} [character : Read / Write]}{

List of icon sizes (gtk-menu=16,16:gtk-button=20,20...  Default value: NULL

}
\item{\code{gtk-icon-theme-name} [character : Read / Write]}{

Name of icon theme to use.  Default value: "hicolor"

}
\item{\code{gtk-key-theme-name} [character : Read / Write]}{

Name of key theme RC file to load.  Default value: NULL

}
\item{\code{gtk-menu-bar-accel} [character : Read / Write]}{

Keybinding to activate the menu bar.  Default value: "F10"

}
\item{\code{gtk-menu-bar-popup-delay} [integer : Read / Write]}{

Delay before the submenus of a menu bar appear.  Allowed values: >= 0  Default value: 0

}
\item{\code{gtk-menu-images} [logical : Read / Write]}{

Whether images should be shown in menus.  Default value: TRUE

}
\item{\code{gtk-menu-popdown-delay} [integer : Read / Write]}{

The time before hiding a submenu when the pointer is moving towards the submenu.  Allowed values: >= 0  Default value: 1000

}
\item{\code{gtk-menu-popup-delay} [integer : Read / Write]}{

Minimum time the pointer must stay over a menu item before the submenu appear.  Allowed values: >= 0  Default value: 225

}
\item{\code{gtk-modules} [character : Read / Write]}{

List of currently active GTK modules.  Default value: NULL

}
\item{\code{gtk-split-cursor} [logical : Read / Write]}{

Whether two cursors should be displayed for mixed left-to-right and right-to-left text.  Default value: TRUE

}
\item{\code{gtk-theme-name} [character : Read / Write]}{

Name of theme RC file to load.  Default value: "Raleigh"

}
\item{\code{gtk-toolbar-icon-size} [\code{\link{GtkIconSize}} : Read / Write]}{

Size of icons in default toolbars.  Default value: GTK_ICON_SIZE_LARGE_TOOLBAR

}
\item{\code{gtk-toolbar-style} [\code{\link{GtkToolbarStyle}} : Read / Write]}{

Whether default toolbars have text only, text and icons, icons only, etc.  Default value: GTK_TOOLBAR_BOTH

}
\item{\code{gtk-xft-antialias} [integer : Read / Write]}{

Whether to antialias Xft fonts; 0=no, 1=yes, -1=default.  Allowed values: [-1,1]  Default value: -1

}
\item{\code{gtk-xft-dpi} [integer : Read / Write]}{

Resolution for Xft, in 1024 * dots/inch. -1 to use default value.  Allowed values: [-1,1048576]  Default value: -1

}
\item{\code{gtk-xft-hinting} [integer : Read / Write]}{

Whether to hint Xft fonts; 0=no, 1=yes, -1=default.  Allowed values: [-1,1]  Default value: -1

}
\item{\code{gtk-xft-hintstyle} [character : Read / Write]}{

What degree of hinting to use; hintnone, hintslight, hintmedium, or hintfull.  Default value: NULL

}
\item{\code{gtk-xft-rgba} [character : Read / Write]}{

Type of subpixel antialiasing; none, rgb, bgr, vrgb, vbgr.  Default value: NULL

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSettings.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
