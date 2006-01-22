\alias{GtkLabel}
\alias{gtkLabel}
\name{GtkLabel}
\title{GtkLabel}
\description{A widget that displays a small to medium amount of text}
\usage{gtkLabel(str = NULL, show = TRUE)}
\section{Methods and Functions}{
\link{gtkLabelNew}(str = NULL, show = TRUE)
\link{gtkLabelSetText}(object, str)
\link{gtkLabelSetAttributes}(object, attrs)
\link{gtkLabelSetMarkup}(object, str)
\link{gtkLabelSetMarkupWithMnemonic}(object, str)
\link{gtkLabelSetPattern}(object, pattern)
\link{gtkLabelSetJustify}(object, jtype)
\link{gtkLabelSetEllipsize}(object, mode)
\link{gtkLabelSetWidthChars}(object, n.chars)
\link{gtkLabelSetMaxWidthChars}(object, n.chars)
\link{gtkLabelGet}(object)
\link{gtkLabelParseUline}(object, string)
\link{gtkLabelSetLineWrap}(object, wrap)
\link{gtkLabelGetLayoutOffsets}(object)
\link{gtkLabelGetMnemonicKeyval}(object)
\link{gtkLabelGetSelectable}(object)
\link{gtkLabelGetText}(object)
\link{gtkLabelNewWithMnemonic}(str = NULL, show = TRUE)
\link{gtkLabelSelectRegion}(object, start.offset, end.offset)
\link{gtkLabelSetMnemonicWidget}(object, widget)
\link{gtkLabelSetSelectable}(object, setting)
\link{gtkLabelSetTextWithMnemonic}(object, str)
\link{gtkLabelGetAttributes}(object)
\link{gtkLabelGetJustify}(object)
\link{gtkLabelGetEllipsize}(object)
\link{gtkLabelGetWidthChars}(object)
\link{gtkLabelGetMaxWidthChars}(object)
\link{gtkLabelGetLabel}(object)
\link{gtkLabelGetLayout}(object)
\link{gtkLabelGetLineWrap}(object)
\link{gtkLabelGetMnemonicWidget}(object)
\link{gtkLabelGetSelectionBounds}(object)
\link{gtkLabelGetUseMarkup}(object)
\link{gtkLabelGetUseUnderline}(object)
\link{gtkLabelGetSingleLineMode}(object)
\link{gtkLabelGetAngle}(object)
\link{gtkLabelSetLabel}(object, str)
\link{gtkLabelSetUseMarkup}(object, setting)
\link{gtkLabelSetUseUnderline}(object, setting)
\link{gtkLabelSetSingleLineMode}(object, single.line.mode)
\link{gtkLabelSetAngle}(object, angle)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkMisc}
                     +----GtkLabel
                           +----\link{GtkAccelLabel}
                           +----\link{GtkTipsQuery}}}
\section{Interfaces}{GtkLabel implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkLabel}} widget displays a small amount of text. As the name
implies, most labels are used to label another widget such as a
\code{\link{GtkButton}}, a \code{\link{GtkMenuItem}}, or a \code{\link{GtkOptionMenu}}.}
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
# Pressing Alt-H will activate this button
button <- gtkButton()
label <- gtkLabelNewWithMnemonic("_Hello")
button$add(label)

}
There's a convenience function to create buttons with a mnemonic label 
already inside:

\preformatted{
# Pressing Alt+H will activate this button
button <- gtkButtonNewWithMnemonic("_Hello")
}

To create a mnemonic for a widget alongside the label, such as a 
\code{\link{GtkEntry}}, you have to point the label at the entry with 
\code{\link{gtkLabelSetMnemonicWidget}}:
\preformatted{
# Pressing Alt+H will focus the entry
entry <- gtkEntry();
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
\section{Structures}{\describe{\item{\code{GtkLabel}}{
This should not be accessed directly.  Use the accessor functions as
described below.

}}}
\section{Convenient Construction}{\code{gtkLabel} is the result of collapsing the constructors of \code{GtkLabel} (\code{\link{gtkLabelNew}}, \code{\link{gtkLabelNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{copy-clipboard(label, user.data)}}{


\describe{
\item{\code{label}}{[\code{\link{GtkLabel}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(label, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{label}}{[\code{\link{GtkLabel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{arg3}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{populate-popup(label, arg1, user.data)}}{


\describe{
\item{\code{label}}{[\code{\link{GtkLabel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMenu}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{angle} [numeric : Read / Write]}{

The angle that the baseline of the label makes with the horizontal,
in degrees, measured counterclockwise. An angle of 90 reads from
from bottom to top, an angle of 270, from top to bottom. Ignored
if the label is selectable, wrapped, or ellipsized.  

  Allowed values: [0,360]  Default value: 0  Since  2.6

}
\item{\code{attributes} [\code{\link{PangoAttrList}} : Read / Write]}{

A list of style attributes to apply to the text of the label.

}
\item{\code{cursor-position} [integer : Read]}{

The current position of the insertion cursor in chars.  Allowed values: >= 0  Default value: 0

}
\item{\code{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

The preferred place to ellipsize the string, if the label does not have 
enough room to display the entire string, specified as a \code{PangoEllisizeMode}. 
  
Note that setting this property to a value other than \code{PANGO_ELLIPSIZE_NONE} 
has the side-effect that the label requests only enough space to display the
ellipsis "...". In particular, this means that ellipsizing labels don't
work well in notebook tabs, unless the tab's ::tab-expand property is set
to \code{TRUE}. Other means to set a label's width are
\code{\link{gtkWidgetSetSizeRequest}} and \code{\link{gtkLabelSetWidthChars}}.  

  Default value: PANGO_ELLIPSIZE_NONE  Since  2.6

}
\item{\code{justify} [\code{\link{GtkJustification}} : Read / Write]}{

The alignment of the lines in the text of the label relative to each other. This does NOT affect the alignment of the label within its allocation. See GtkMisc::xalign for that.  Default value: GTK_JUSTIFY_LEFT

}
\item{\code{label} [character : Read / Write]}{

The text of the label.  Default value: NULL

}
\item{\code{max-width-chars} [integer : Read / Write]}{

The desired maximum width of the label, in characters. If this property 
is set to -1, the width will be calculated automatically, otherwise the 
label will request space for no more than the requested number of 
characters. If the width-chars property is set to a positive value,
then the max-width-chars property is ignored.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{mnemonic-keyval} [numeric : Read]}{

The mnemonic accelerator key for this label.  Default value: 16777215

}
\item{\code{mnemonic-widget} [\code{\link{GtkWidget}} : Read / Write]}{

The widget to be activated when the label's mnemonic key is pressed.

}
\item{\code{pattern} [character : Write]}{

A string with _ characters in positions correspond to characters in the text to underline.  Default value: NULL

}
\item{\code{selectable} [logical : Read / Write]}{

Whether the label text can be selected with the mouse.  Default value: FALSE

}
\item{\code{selection-bound} [integer : Read]}{

The position of the opposite end of the selection from the cursor in chars.  Allowed values: >= 0  Default value: 0

}
\item{\code{single-line-mode} [logical : Read / Write]}{

Whether the label is in single line mode. In single line mode,
the height of the label does not depend on the actual text, it
is always set to ascent + descent of the font. This can be an
advantage in situations where resizing the label because of text 
changes would be distracting, e.g. in a statusbar.  

  Default value: FALSE  Since  2.6

}
\item{\code{use-markup} [logical : Read / Write]}{

The text of the label includes XML markup. See pango_parse_markup().  Default value: FALSE

}
\item{\code{use-underline} [logical : Read / Write]}{

If set, an underline in the text indicates the next character should be used for the mnemonic accelerator key.  Default value: FALSE

}
\item{\code{width-chars} [integer : Read / Write]}{

The desired width of the label, in characters. If this property is set to
-1, the width will be calculated automatically, otherwise the label will
request either 3 characters or the property value, whichever is greater.
If the width-chars property is set to a positive value, then the 
max-width-chars property is ignored.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{wrap} [logical : Read / Write]}{

If set, wrap lines if the text becomes too wide.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkLabel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
