\alias{GtkLabel}
\alias{gtkLabel}
\name{GtkLabel}
\title{GtkLabel}
\description{A widget that displays a small to medium amount of text}
\section{Methods and Functions}{
\code{\link{gtkLabelNew}(str = NULL, show = TRUE)}\cr
\code{\link{gtkLabelSetText}(object, str)}\cr
\code{\link{gtkLabelSetAttributes}(object, attrs)}\cr
\code{\link{gtkLabelSetMarkup}(object, str)}\cr
\code{\link{gtkLabelSetMarkupWithMnemonic}(object, str)}\cr
\code{\link{gtkLabelSetPattern}(object, pattern)}\cr
\code{\link{gtkLabelSetJustify}(object, jtype)}\cr
\code{\link{gtkLabelSetEllipsize}(object, mode)}\cr
\code{\link{gtkLabelSetWidthChars}(object, n.chars)}\cr
\code{\link{gtkLabelSetMaxWidthChars}(object, n.chars)}\cr
\code{\link{gtkLabelGet}(object)}\cr
\code{\link{gtkLabelParseUline}(object, string)}\cr
\code{\link{gtkLabelSetLineWrap}(object, wrap)}\cr
\code{\link{gtkLabelSetLineWrapMode}(object, wrap.mode)}\cr
\code{\link{gtkLabelGetLayoutOffsets}(object)}\cr
\code{\link{gtkLabelGetMnemonicKeyval}(object)}\cr
\code{\link{gtkLabelGetSelectable}(object)}\cr
\code{\link{gtkLabelGetText}(object)}\cr
\code{\link{gtkLabelNewWithMnemonic}(str = NULL, show = TRUE)}\cr
\code{\link{gtkLabelSelectRegion}(object, start.offset, end.offset)}\cr
\code{\link{gtkLabelSetMnemonicWidget}(object, widget)}\cr
\code{\link{gtkLabelSetSelectable}(object, setting)}\cr
\code{\link{gtkLabelSetTextWithMnemonic}(object, str)}\cr
\code{\link{gtkLabelGetAttributes}(object)}\cr
\code{\link{gtkLabelGetJustify}(object)}\cr
\code{\link{gtkLabelGetEllipsize}(object)}\cr
\code{\link{gtkLabelGetWidthChars}(object)}\cr
\code{\link{gtkLabelGetMaxWidthChars}(object)}\cr
\code{\link{gtkLabelGetLabel}(object)}\cr
\code{\link{gtkLabelGetLayout}(object)}\cr
\code{\link{gtkLabelGetLineWrap}(object)}\cr
\code{\link{gtkLabelGetLineWrapMode}(object)}\cr
\code{\link{gtkLabelGetMnemonicWidget}(object)}\cr
\code{\link{gtkLabelGetSelectionBounds}(object)}\cr
\code{\link{gtkLabelGetUseMarkup}(object)}\cr
\code{\link{gtkLabelGetUseUnderline}(object)}\cr
\code{\link{gtkLabelGetSingleLineMode}(object)}\cr
\code{\link{gtkLabelGetAngle}(object)}\cr
\code{\link{gtkLabelSetLabel}(object, str)}\cr
\code{\link{gtkLabelSetUseMarkup}(object, setting)}\cr
\code{\link{gtkLabelSetUseUnderline}(object, setting)}\cr
\code{\link{gtkLabelSetSingleLineMode}(object, single.line.mode)}\cr
\code{\link{gtkLabelSetAngle}(object, angle)}\cr
\code{\link{gtkLabelGetCurrentUri}(object)}\cr
\code{\link{gtkLabelSetTrackVisitedLinks}(object, track.links)}\cr
\code{\link{gtkLabelGetTrackVisitedLinks}(object)}\cr
\code{gtkLabel(str = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkLabel
                                 +----GtkAccelLabel
                                 +----GtkTipsQuery}}
\section{Interfaces}{GtkLabel implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkLabel}} widget displays a small amount of text. As the name
implies, most labels are used to label another widget such as a
\code{\link{GtkButton}}, a \code{\link{GtkMenuItem}}, or a \code{\link{GtkOptionMenu}}.}
\section{GtkLabel as GtkBuildable}{The GtkLabel implementation of the GtkBuildable interface supports a
custom <attributes> element, which supports any number of <attribute>
elements. the <attribute> element has attributes named name, value,
start and end and allows you to specify \code{\link{PangoAttribute}} values for this label.
  
 \emph{A UI definition fragment specifying Pango attributes}\preformatted{<object class="GtkLabel">
  <attributes>
    <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
    <attribute name="background" value="red" start="5" end="10"/>"
  </attributes>
</object>
}  
The start and end attributes specify the range of characters to which the
Pango attribute applies. If start and end are not specified, the attribute is
applied to the whole text. Note that specifying ranges does not make much
sense with translatable attributes. Use markup embedded in the translatable
content instead.}
\section{Mnemonics}{Labels may contain \dfn{mnemonics}. Mnemonics are
underlined characters in the label, used for keyboard navigation.
Mnemonics are created by providing a string with an underscore before
the mnemonic character, such as \code{"_File"}, to the
functions \code{\link{gtkLabelNewWithMnemonic}} or
\code{\link{gtkLabelSetTextWithMnemonic}}.
  
Mnemonics automatically activate any activatable widget the label is
inside, such as a \code{\link{GtkButton}}; if the label is not inside the
mnemonic's target widget, you have to tell the label about the target
using \code{\link{gtkLabelSetMnemonicWidget}}. Here's a simple example where
the label is inside a button:
\preformatted{
## Pressing Alt-H will activate this button
button <- gtkButton()
label <- gtkLabelNewWithMnemonic("_Hello")
button$add(label)
}
There's a convenience function to create buttons with a mnemonic label
already inside:
\preformatted{
## Pressing Alt+H will activate this button
button <- gtkButtonNewWithMnemonic("_Hello")
}
To create a mnemonic for a widget alongside the label, such as a
\code{\link{GtkEntry}}, you have to point the label at the entry with
\code{\link{gtkLabelSetMnemonicWidget}}:
\preformatted{
## Pressing Alt+H will focus the entry
entry <- gtkEntry()
label <- gtkLabelNewWithMnemonic("_Hello")
label$setMnemonicWidget(entry)
}}
\section{Markup (styled text)}{To make it easy to format text in a label (changing colors, fonts,
etc.), label text can be provided in a simple markup format.
Here's how to create a label with a small font:
\preformatted{
label <- gtkLabelNew()
label$setMarkup("<small>Small text</small>")
}
(See complete documentation of available
tags in the Pango manual.)
  
The markup passed to \code{\link{gtkLabelSetMarkup}} must be valid; for example,
literal </>/& characters must be escaped as &lt;,
&gt;, and &amp;. If you pass text obtained from the user, file,
or a network to \code{\link{gtkLabelSetMarkup}}, you'll want to escape it with
\code{gMarkupEscapeText()} or \code{gMarkupPrintfEscaped()}.
  
Markup strings are just a convenient way to set the \code{\link{PangoAttrList}} on
a label; \code{\link{gtkLabelSetAttributes}} may be a simpler way to set
attributes in some cases. Be careful though; \code{\link{PangoAttrList}} tends to
cause internationalization problems, unless you're applying attributes
to the entire string (i.e. unless you set the range of each attribute
to [0, G_MAXINT)). The reason is that specifying the start_index and
end_index for a \code{\link{PangoAttribute}} requires knowledge of the exact string
being displayed, so translations will cause problems.}
\section{Selectable labels}{Labels can be made selectable with \code{\link{gtkLabelSetSelectable}}.
Selectable labels allow the user to copy the label contents to
the clipboard. Only labels that contain useful-to-copy information
-- such as error messages -- should be made selectable.}
\section{Text layout}{A label can contain any number of paragraphs, but will have
performance problems if it contains more than a small number.
Paragraphs are separated by newlines or other paragraph separators
understood by Pango.
  
Labels can automatically wrap text if you call
\code{\link{gtkLabelSetLineWrap}}.
  \code{\link{gtkLabelSetJustify}} sets how the lines in a label align
with one another. If you want to set how the label as a whole
aligns in its available space, see \code{\link{gtkMiscSetAlignment}}.}
\section{Links}{Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
to regular Pango markup. The markup for links is borrowed from HTML, using the
\code{a} with href and title attributes. GTK+ renders links similar to the
way they appear in web browsers, with colored, underlined text. The title
attribute is displayed as a tooltip on the link. An example looks like this:
\preformatted{label$setMarkup("Go to the &lt;a href=\"http://www.gtk.org\" title=\"&amp;lt;i&amp;gt;Our&amp;/i&amp;gt; website\"&gt;GTK+ website&lt;/a&gt; for more...")}
It is possible to implement custom handling for links and their tooltips with
the \verb{"activate-link"} signal and the \code{\link{gtkLabelGetCurrentUri}} function.}
\section{Structures}{\describe{\item{\verb{GtkLabel}}{
This should not be accessed directly.  Use the accessor functions as
described below.

}}}
\section{Convenient Construction}{\code{gtkLabel} is the result of collapsing the constructors of \code{GtkLabel} (\code{\link{gtkLabelNew}}, \code{\link{gtkLabelNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate-current-link(label, user.data)}}{
A keybinding signal
which gets emitted when the user activates a link in the label.
  
Applications may also emit the signal with \code{gSignalEmitByName()}
if they need to control activation of URIs programmatically.
  
The default bindings for this signal are all forms of the Enter key.
  Since 2.18

\describe{
\item{\code{label}}{The label on which the signal was emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{activate-link(label, uri, user.data)}}{
The signal which gets emitted to activate a URI.
Applications may connect to it to override the default behaviour,
which is to call \code{\link{gtkShowUri}}.
  Since 2.18

\describe{
\item{\code{label}}{The label on which the signal was emitted}
\item{\code{uri}}{the URI that is activated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the link has been activated

}
\item{\code{copy-clipboard(label, user.data)}}{
The ::copy-clipboard signal is a
keybinding signal
which gets emitted to copy the selection to the clipboard.
  
The default binding for this signal is Ctrl-c.

\describe{
\item{\code{label}}{the object which received the signal}
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
\item{\code{populate-popup(label, menu, user.data)}}{
The ::populate-popup signal gets emitted before showing the
context menu of the label. Note that only selectable labels
have context menus.
  
If you need to add items to the context menu, connect
to this signal and append your menuitems to the \code{menu}.

\describe{
\item{\code{label}}{The label on which the signal is emitted}
\item{\code{menu}}{the menu that is being populated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{angle} [numeric : Read / Write]}{

The angle that the baseline of the label makes with the horizontal,
in degrees, measured counterclockwise. An angle of 90 reads from
from bottom to top, an angle of 270, from top to bottom. Ignored
if the label is selectable, wrapped, or ellipsized.
  Allowed values: [0,360]  Default value: 0  Since 2.6

}
\item{\verb{attributes} [\code{\link{PangoAttrList}} : *        : Read / Write]}{

A list of style attributes to apply to the text of the label.

}
\item{\verb{cursor-position} [integer : Read]}{

The current position of the insertion cursor in chars.  Allowed values: >= 0  Default value: 0

}
\item{\verb{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

The preferred place to ellipsize the string, if the label does
not have enough room to display the entire string, specified as a
\verb{PangoEllisizeMode}.
  
Note that setting this property to a value other than
\code{PANGO_ELLIPSIZE_NONE} has the side-effect that the label requests
only enough space to display the ellipsis "...". In particular, this
means that ellipsizing labels do not work well in notebook tabs, unless
the tab's \verb{"tab-expand"} property is set to \code{TRUE}. Other ways
to set a label's width are \code{\link{gtkWidgetSetSizeRequest}} and
\code{\link{gtkLabelSetWidthChars}}.
  Default value: PANGO_ELLIPSIZE_NONE  Since 2.6

}
\item{\verb{justify} [\code{\link{GtkJustification}} : Read / Write]}{

The alignment of the lines in the text of the label relative to each other. This does NOT affect the alignment of the label within its allocation. See GtkMisc::xalign for that.  Default value: GTK_JUSTIFY_LEFT

}
\item{\verb{label} [character : *                : Read / Write]}{

The text of the label.  Default value: ""

}
\item{\verb{max-width-chars} [integer : Read / Write]}{

The desired maximum width of the label, in characters. If this property
is set to -1, the width will be calculated automatically, otherwise the
label will request space for no more than the requested number of
characters. If the \verb{"width-chars"} property is set to a positive
value, then the "max-width-chars" property is ignored.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{mnemonic-keyval} [numeric : Read]}{

The mnemonic accelerator key for this label.  Default value: 16777215

}
\item{\verb{mnemonic-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

The widget to be activated when the label's mnemonic key is pressed.

}
\item{\verb{pattern} [character : *                : Write]}{

A string with _ characters in positions correspond to characters in the text to underline.  Default value: NULL

}
\item{\verb{selectable} [logical : Read / Write]}{

Whether the label text can be selected with the mouse.  Default value: FALSE

}
\item{\verb{selection-bound} [integer : Read]}{

The position of the opposite end of the selection from the cursor in chars.  Allowed values: >= 0  Default value: 0

}
\item{\verb{single-line-mode} [logical : Read / Write]}{

Whether the label is in single line mode. In single line mode,
the height of the label does not depend on the actual text, it
is always set to ascent + descent of the font. This can be an
advantage in situations where resizing the label because of text
changes would be distracting, e.g. in a statusbar.
  Default value: FALSE  Since 2.6

}
\item{\verb{track-visited-links} [logical : Read / Write]}{

Set this property to \code{TRUE} to make the label track which links
have been clicked. It will then apply the ::visited-link-color
color, instead of ::link-color.
  Default value: TRUE  Since 2.18

}
\item{\verb{use-markup} [logical : Read / Write]}{

The text of the label includes XML markup. See pango_parse_markup().  Default value: FALSE

}
\item{\verb{use-underline} [logical : Read / Write]}{

If set, an underline in the text indicates the next character should be used for the mnemonic accelerator key.  Default value: FALSE

}
\item{\verb{width-chars} [integer : Read / Write]}{

The desired width of the label, in characters. If this property is set to
-1, the width will be calculated automatically, otherwise the label will
request either 3 characters or the property value, whichever is greater.
If the "width-chars" property is set to a positive value, then the
\verb{"max-width-chars"} property is ignored.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{wrap} [logical : Read / Write]}{

If set, wrap lines if the text becomes too wide.  Default value: FALSE

}
\item{\verb{wrap-mode} [\code{\link{PangoWrapMode}} : Read / Write]}{

If line wrapping is on (see the \verb{"wrap"} property) this controls
how the line wrapping is done. The default is \code{PANGO_WRAP_WORD}, which
means wrap on word boundaries.
  Default value: PANGO_WRAP_WORD  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkLabel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
