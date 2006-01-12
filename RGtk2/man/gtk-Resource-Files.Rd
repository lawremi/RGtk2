\alias{gtk-Resource-Files}
\alias{GtkRcStyle}
\alias{GtkRcFlags}
\alias{GtkRcTokenType}
\name{gtk-Resource-Files}
\title{Resource Files}
\description{Routines for handling resource files}
\usage{
\link{gtkRcScannerNew}()
\link{gtkRcGetStyle}(object)
\link{gtkRcGetStyleByPaths}(settings, widget.path, class.path, type)
\link{gtkRcAddWidgetNameStyle}(object, pattern)
\link{gtkRcAddWidgetClassStyle}(object, pattern)
\link{gtkRcAddClassStyle}(object, pattern)
\link{gtkRcParse}(filename)
\link{gtkRcParseString}(rc.string)
\link{gtkRcReparseAll}()
\link{gtkRcReparseAllForSettings}(settings, force.load)
\link{gtkRcResetStyles}(settings)
\link{gtkRcAddDefaultFile}(filename)
\link{gtkRcGetDefaultFiles}()
\link{gtkRcSetDefaultFiles}(filenames)
\link{gtkRcParseColor}(scanner, color)
\link{gtkRcParseState}(scanner, state)
\link{gtkRcParsePriority}(scanner, priority)
\link{gtkRcFindModuleInPath}(module.file)
\link{gtkRcFindPixmapInPath}(settings, scanner = NULL, pixmap.file)
\link{gtkRcGetModuleDir}()
\link{gtkRcGetImModulePath}()
\link{gtkRcGetImModuleFile}()
\link{gtkRcGetThemeDir}()
\link{gtkRcStyleNew}()
\link{gtkRcStyleCopy}(object)
}
\details{GTK+ provides resource file mechanism for configuring
various aspects of the operation of a GTK+ program
at runtime.}
\section{Default files}{An application can cause GTK+ to parse a specific RC
file by calling \code{\link{gtkRcParse}}. In addition to this,
certain files will be read at the end of \code{\link{gtkInit}}.
Unless modified, the files looked for will be 
\file{<SYSCONFDIR>/gtk-2.0/gtkrc} 
and \file{.gtkrc-2.0} in the users home directory.
(\file{<SYSCONFDIR>} defaults to 
\file{/usr/local/etc}. It can be changed with the
\option{--prefix} or \option{--sysconfdir} options when 
configuring GTK+.) Note that although the filenames contain the version 
number 2.0, all 2.x versions of GTK+ look for these files.  
  
The set of these \dfn{default} files
can be retrieved with \code{\link{gtkRcGetDefaultFiles}}
and modified with \code{\link{gtkRcAddDefaultFile}} and
\code{\link{gtkRcSetDefaultFiles}}.
Additionally, the \env{GTK2_RC_FILES} environment variable
can be set to a \code{G_SEARCHPATH_SEPARATOR_S-separated} list of files
in order to overwrite the set of default files at runtime.
  
For each RC file, in addition to the file itself, GTK+ will look for 
a locale-specific file that will be parsed after the main file. 
For instance, if \env{LANG} is set to \code{ja_JP.ujis},
when loading the default file \file{~/.gtkrc} then GTK+ looks 
for \file{~/.gtkrc.ja_JP} and \file{~/.gtkrc.ja}, 
and parses the first of those that exists.}
\section{Pathnames and patterns}{A resource file defines a number of styles and key bindings and
attaches them to particular widgets. The attachment is done
by the \code{widget}, \code{widget_class},
and \code{class} declarations. As an example
of such a statement:
\preformatted{widget "mywindow.*.GtkEntry" style "my-entry-class"}
attaches the style \code{"my-entry-class"}
to all widgets whose \dfn{widget class}
matches the \dfn{pattern}
\code{"mywindow.*.GtkEntry"}.
  
The patterns here are given in the standard shell glob
syntax. The \code{"?"} wildcard matches
any character, while \code{"*"} matches
zero or more of any character. The three types of
matching are against the widget path, the
\dfn{class path} and the class
hierarchy. Both the widget and the class paths consists of a
\code{"."} separated list of all the
parents of the widget and the widget itself from
outermost to innermost. The difference is that in
the widget path, the name assigned by
\code{\link{gtkWidgetSetName}} is used
if present, otherwise the class name of the widget, while
for the class path, the class name is always used.
  
So, if you have a \code{\link{GtkEntry}} named
\code{"myentry"}, inside of a of a window
named \code{"mywindow"}, then the
widget path is: \code{"mwindow.GtkHBox.myentry"}
while the class path is: \code{"GtkWindow.GtkHBox.GtkEntry"}.
  
Matching against class is a little different. The pattern
match is done against all class names in the widgets
class hierarchy (not the layout hierarchy) in sequence, so the
pattern:
\preformatted{class "GtkButton" style "my-style"}
will match not just \code{\link{GtkButton}} widgets,
but also \code{\link{GtkToggleButton}} and
\code{\link{GtkCheckButton}} widgets, since
those classes derive from \code{\link{GtkButton}}.
  
Additionally, a priority can be specified for each pattern, and styles 
override other styles first by priority, then by pattern type and then 
by order of specification (later overrides earlier). The priorities 
that can be specified are (highest to lowest):
\itemize{
\item \code{highest}
\item \code{rc}
\item \code{theme}
\item \code{application}
\item \code{gtk}
\item \code{lowest}
}
\code{rc} is the default for styles
read from an RC file, \code{theme}
is the default for styles read from theme RC files,
\code{application} 
should be used for styles an application sets
up, and \code{gtk} is used for styles
that GTK+ creates internally.}
\section{Toplevel declarations}{An RC file is a text file which is composed of a sequence
of declarations. \code{'#'} characters delimit comments and
the portion of a line after a \code{'#'} is ignored when parsing
an RC file.
  
The possible toplevel declarations are:

\describe{
\item{\code{binding }}{Declares a binding set.}
\item{\code{class }}{Specifies a style or binding set for a particular
     branch of the inheritance hierarchy.}
\item{\code{include }}{Parses another file at this point. If
        \var{filename} is not an absolute filename, 
        it is searched in the directories of the currently open RC files.
      }
\item{\code{module_path }}{GTK+ also tries to load a 
        locale-specific variant of
        the included file.
       }
\item{\code{pixmap_path }}{Sets a path (a list of directories separated
      by colons) that will be searched for theme engines referenced in
      RC files.}
\item{\code{im_module_file }}{Sets a path (a list of directories separated
      by colons) that will be searched for pixmaps referenced in
      RC files.}
\item{\code{style }}{Sets the pathname for the IM modules file. Setting this from RC files
      is deprecated; you should use the environment variable \env{GTK_IM_MODULE_FILE}
      instead.}
\item{\code{widget }}{Declares a style.}
\item{\code{widget_class }}{Specifies a style or binding set for a particular
     group of widgets by matching on the widget pathname.}
\item{\var{setting} = \var{value}}{Specifies a style or binding set for a particular
     group of widgets by matching on the class pathname.}
}}
\section{Styles}{A RC style is specified by a \code{style} 
declaration in a RC file, and then bound to widgets
with a \code{widget}, \code{widget_class},
or \code{class} declaration. All styles
applying to a particular widget are composited together
with \code{widget} declarations overriding
\code{widget_class} declarations which, in
turn, override \code{class} declarations.
Within each type of declaration, later declarations override
earlier ones.
  
Within a \code{style} declaration, the possible
elements are:

\describe{
\item{\code{bg[}}{         Sets the color used for the background of most widgets.
       }
\item{\code{fg[}}{         Sets the color used for the foreground of most widgets.
       }
\item{\code{base[}}{         Sets the color used for the background of widgets displaying
         editable text. This color is used for the background
         of, among others, \code{GtkText}, \code{\link{GtkEntry}}, \code{\link{GtkList}}, and \code{\link{GtkCList}}.
       }
\item{\code{text[}}{         Sets the color used for foreground of widgets using
         \code{base} for the background color.
       }
\item{\code{xthickness =
      }}{         Sets the xthickness, which is used for various horizontal padding
         values in GTK+.
       }
\item{\code{ythickness =
      }}{         Sets the ythickness, which is used for various vertical padding
         values in GTK+.
       }
\item{\code{bg_pixmap[}}{         Sets a background pixmap to be used in place of
         the \code{bg} color (or for \code{GtkText},
         in place of the \code{base} color. The special
         value \code{"<parent>"} may be used to indicate that the widget should
         use the same background pixmap as its parent. The special value
         \code{"<none>"} may be used to indicate no background pixmap.
       }
\item{\code{font = }}{         Starting with GTK+ 2.0, the "font" and "fontset"
         declarations are ignored; use "font_name" declarations instead.
       }
\item{\code{fontset = }}{         Starting with GTK+ 2.0, the "font" and "fontset"
         declarations are ignored; use "font_name" declarations instead.
       }
\item{\code{font_name = }}{         Sets the font for a widget. \var{font} must be 
         a Pango font name, e.g. \code{"Sans Italic 10"}. 
         For details about Pango font names, see 
         \code{\link{pangoFontDescriptionFromString}}.
       }
\item{\code{stock[}}{        Defines the icon for a stock item.
       }
\item{\code{engine }}{        Defines the engine to be used when drawing with this style.
       }
\item{\code{\emph{undocumented
}}}{        Sets a style property for a widget class.
       }
}
  
The colors and background pixmaps are specified as a function of the
state of the widget. The states are:

\describe{
\item{\code{NORMAL}}{        A color used for a widget in its normal state.
      }
\item{\code{ACTIVE}}{        A variant of the \code{NORMAL} color used when the
        widget is in the \code{GTK_STATE_ACTIVE} state, and also for
        the trough of a ScrollBar, tabs of a NoteBook
        other than the current tab and similar areas.
        Frequently, this should be a darker variant
        of the \code{NORMAL} color.
      }
\item{\code{PRELIGHT}}{        A color used for widgets in the \code{GTK_STATE_PRELIGHT} state. This
        state is the used for Buttons and MenuItems
        that have the mouse cursor over them, and for 
        their children.
      }
\item{\code{SELECTED}}{        A color used to highlight data selected by the user.
        for instance, the selected items in a list widget, and the
        selection in an editable widget.
      }
\item{\code{INSENSITIVE}}{        A color used for the background of widgets that have
        been set insensitive with \code{\link{gtkWidgetSetSensitive}}.
      }
}
  
Colors can be specified as a string containing a color name (GTK+ knows
all names from the X color database 
\file{/usr/lib/X11/rgb.txt}),  
in one of the hexadecimal forms \code{#rrrrggggbbbb},
\code{#rrrgggbbb}, \code{#rrggbb},
or \code{#rgb}, where \code{r},
\code{g} and \code{b} are
hex digits, or they can be specified as a triplet 
\code{{ }, where \code{r},
\code{g} and \code{b} are either integers in 
the range 0-65535 or floats in the range 0.0-1.0.
  
In a \code{stock} definition, icon sources are specified as a
4-tuple of image filename or icon name, text direction, widget state, and size, in that
order.  Each icon source specifies an image filename or icon name to use with a given
direction, state, and size. Filenames are specified as a string such
as \code{"itemltr.png"}, while icon names (looked up
in the current icon theme), are specified with a leading
\code{@}, such as \code{@"item-ltr"}.
The \code{*} character can be used as a
wildcard, and if direction/state/size are omitted they default to
\code{*}. So for example, the following specifies different icons to
use for left-to-right and right-to-left languages:
\preformatted{stock["my-stock-item"] = 
{
  { "itemltr.png", LTR, *, * },
  { "itemrtl.png", RTL, *, * }
}}
This could be abbreviated as follows:
\preformatted{stock["my-stock-item"] = 
{
  { "itemltr.png", LTR },
  { "itemrtl.png", RTL }
}}
  
You can specify custom icons for specific sizes, as follows:
\preformatted{stock["my-stock-item"] = 
{
  { "itemmenusize.png", *, *, "gtk-menu" },
  { "itemtoolbarsize.png", *, *, "gtk-large-toolbar" }
  { "itemgeneric.png" } /* implicit *, *, * as a fallback */
}}
The sizes that come with GTK+ itself are \code{"gtk-menu"},
\code{"gtk-small-toolbar"}, \code{"gtk-large-toolbar"},
\code{"gtk-button"}, \code{"gtk-dialog"}. Applications
can define other sizes.
  
It's also possible to use custom icons for a given state, for example:
\preformatted{stock["my-stock-item"] = 
{
  { "itemprelight.png", *, PRELIGHT },
  { "iteminsensitive.png", *, INSENSITIVE }, 
  { "itemgeneric.png" } /* implicit *, *, * as a fallback */
}}
  
When selecting an icon source to use, GTK+ will consider text direction most
important, state second, and size third. It will select the best match based on
those criteria. If an attribute matches exactly (e.g. you specified
\code{PRELIGHT} or specified the size), GTK+ won't modify the image;
if the attribute matches with a wildcard, GTK+ will scale or modify the image to
match the state and size the user requested.}
\section{Key bindings}{Key bindings allow the user to specify actions to be 
taken on particular key presses. The form of a binding
set declaration is:
  \preformatted{binding   \var{name}   {
  bind   \var{key}   { 
      \var{signalname}   (  \var{param}  , ...)
    ...
  }
  ...
}}  
\var{key} is a string consisting of a 
series of modifiers followed by the name of a key. The
modifiers can be:
\itemize{
\item \code{<alt>}
\item \code{<control>}
\item \code{<mod1>}
\item \code{<mod2>}
\item \code{<mod3>}
\item \code{<mod4>}
\item \code{<mod5>}
\item \code{<release>}
\item \code{<shft>}
\item \code{<shift>}
}
\code{<shft>} is an alias for 
\code{<shift>} and 
\code{<alt>} is an alias for
\code{<mod1>}.
  
The action that is bound to the key is a sequence
of signal names (strings) followed by parameters for 
each signal. The signals must be action signals.
(See \code{gSignalNew()}). Each parameter can be
a float, integer, string, or unquoted string
representing an enumeration value. The types of
the parameters specified must match the types of the 
parameters of the signal.
  
Binding sets are connected to widgets in the same manner as styles, 
with one difference: Binding sets override other binding sets first 
by pattern type, then by priority and then by order of specification.
The priorities that can be specified and their default values are the 
same as for styles.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkRcStyle}}
\section{Structures}{\describe{\item{\code{GtkRcStyle}}{
The \code{\link{GtkRcStyle}} structure is used to represent a set
of information about the appearance of a widget.
This can later be composited together with other
\code{\link{GtkRcStyle}} structures to form a \code{\link{GtkStyle}}.

}}}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkRcFlags}}{
The \code{\link{GtkRcFlags}} enumeration is used as a bitmask
to specify which fields of a \code{\link{GtkRcStyle}} have been
set for each state.

\describe{
\item{\code{GTK_RC_FG (fg)}}{If present, the foreground color has been set for this state.}
\item{\code{GTK_RC_BG (bg)}}{If present, the background color has been set for this state.}
\item{\code{GTK_RC_TEXT (text)}}{If present, the text color has been set for this state.}
\item{\code{GTK_RC_BASE (base)}}{If present, the base color has been set for this state.}
}

}
\item{\code{enum GtkRcTokenType}}{
The \code{\link{GtkRcTokenType}} enumeration represents the tokens
in the RC file. It is exposed so that theme engines
can reuse these tokens when parsing the theme-engine
specific portions of a RC file.

\describe{
\item{\code{GTK_RC_TOKEN_INVALID (invalid)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_INCLUDE (include)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_NORMAL (normal)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_ACTIVE (active)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_PRELIGHT (prelight)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_SELECTED (selected)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_INSENSITIVE (insensitive)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_FG (fg)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_BG (bg)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_TEXT (text)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_BASE (base)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_XTHICKNESS (xthickness)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_YTHICKNESS (ythickness)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_FONT (font)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_FONTSET (fontset)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_FONT_NAME (font-name)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_BG_PIXMAP (bg-pixmap)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_PIXMAP_PATH (pixmap-path)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_STYLE (style)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_BINDING (binding)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_BIND (bind)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_WIDGET (widget)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_WIDGET_CLASS (widget-class)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_CLASS (class)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_LOWEST (lowest)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_GTK (gtk)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_APPLICATION (application)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_THEME (theme)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_RC (rc)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_HIGHEST (highest)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_ENGINE (engine)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_MODULE_PATH (module-path)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_IM_MODULE_PATH (im-module-path)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_IM_MODULE_FILE (im-module-file)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_STOCK (stock)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_LTR (ltr)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_RTL (rtl)}}{\emph{undocumented
}}
\item{\code{GTK_RC_TOKEN_LAST (last)}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Resource-Files.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
