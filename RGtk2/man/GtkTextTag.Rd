\alias{GtkTextTag}
\alias{GtkTextAttributes}
\alias{GtkTextAppearance}
\alias{gtkTextTag}
\alias{GtkWrapMode}
\name{GtkTextTag}
\title{GtkTextTag}
\description{A tag that can be applied to text in a GtkTextBuffer}
\section{Methods and Functions}{
\code{\link{gtkTextTagNew}(name = NULL)}\cr
\code{\link{gtkTextTagGetPriority}(object)}\cr
\code{\link{gtkTextTagSetPriority}(object, priority)}\cr
\code{\link{gtkTextTagEvent}(object, event.object, event, iter)}\cr
\code{\link{gtkTextAttributesNew}()}\cr
\code{\link{gtkTextAttributesCopy}(object)}\cr
\code{\link{gtkTextAttributesCopyValues}(object, dest)}\cr
\code{gtkTextTag(name = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkTextTag}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  
Tags should be in the \code{\link{GtkTextTagTable}} for a given \code{\link{GtkTextBuffer}}
before using them with that buffer.
  \code{\link{gtkTextBufferCreateTag}} is the best way to create tags.
See \command{gtk-demo} for numerous examples.
  
The "invisible" property was not implemented for GTK+ 2.0.
It is working (with minor issues) since 2.8.}
\section{Structures}{\describe{
\item{\verb{GtkTextTag}}{
\emph{undocumented
}

}
\item{\verb{GtkTextAttributes}}{
Using \code{\link{GtkTextAttributes}} directly should rarely be necessary. It's
primarily useful with \code{\link{gtkTextIterGetAttributes}}. As with most
GTK+ structs, the fields in this struct should only be read, never
modified directly.

\describe{
\item{\verb{appearance}}{[\code{\link{GtkTextAppearance}}] pointer to sub-struct containing certain attributes}
\item{\verb{justification}}{[\code{\link{GtkJustification}}] }
\item{\verb{direction}}{[\code{\link{GtkTextDirection}}] }
\item{\verb{font}}{[\code{\link{PangoFontDescription}}] }
\item{\verb{fontScale}}{[numeric] }
\item{\verb{leftMargin}}{[integer] }
\item{\verb{indent}}{[integer] }
\item{\verb{rightMargin}}{[integer] }
\item{\verb{pixelsAboveLines}}{[integer] }
\item{\verb{pixelsBelowLines}}{[integer] }
\item{\verb{pixelsInsideWrap}}{[integer] }
\item{\verb{tabs}}{[\code{\link{PangoTabArray}}] }
\item{\verb{wrapMode}}{[\code{\link{GtkWrapMode}}] }
\item{\verb{language}}{[\code{\link{PangoLanguage}}] }
\item{\verb{invisible}}{[numeric] }
\item{\verb{bgFullHeight}}{[numeric] }
\item{\verb{editable}}{[numeric] }
\item{\verb{realized}}{[numeric] }
}

}
\item{\verb{GtkTextAppearance}}{
\emph{undocumented
}

\describe{
\item{\verb{bgColor}}{[\code{\link{GdkColor}}] }
\item{\verb{fgColor}}{[\code{\link{GdkColor}}] }
\item{\verb{bgStipple}}{[\code{\link{GdkBitmap}}] }
\item{\verb{fgStipple}}{[\code{\link{GdkBitmap}}] }
\item{\verb{rise}}{[integer] }
\item{\verb{underline}}{[numeric] }
\item{\verb{strikethrough}}{[numeric] }
\item{\verb{drawBg}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkTextTag} is the equivalent of \code{\link{gtkTextTagNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkWrapMode}}{
Describes a type of line wrapping.

\describe{
\item{\verb{none}}{do not wrap lines; just make the text area wider}
\item{\verb{char}}{wrap text, breaking lines anywhere the cursor can
                appear (between characters, usually - if you want to
                be technical, between graphemes, see
                \code{\link{pangoGetLogAttrs}})}
\item{\verb{word}}{wrap text, breaking lines in between words}
\item{\verb{word_char}}{wrap text, breaking lines in between words, or if 
                that is not enough, also between graphemes.}
}

}}}
\section{Signals}{\describe{\item{\code{event(tag, object, event, iter, user.data)}}{
The ::event signal is emitted when an event occurs on a region of the
buffer marked with this tag.

\describe{
\item{\code{tag}}{the \code{\link{GtkTextTag}} on which the signal is emitted}
\item{\code{object}}{the object the event was fired from (typically a \code{\link{GtkTextView}})}
\item{\code{event}}{the event which triggered the signal}
\item{\code{iter}}{a \code{\link{GtkTextIter}} pointing at the location the event occured}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the
event. \code{FALSE} to propagate the event further.

}}}
\section{Properties}{\describe{
\item{\verb{accumulative-margin} [logical : Read / Write]}{

Whether the margins accumulate or override each other.
  
When set to \code{TRUE} the margins of this tag are added to the margins
of any other non-accumulative margins present. When set to \code{FALSE}
the margins override one another (the default).
  Default value: FALSE  Since 2.12

}
\item{\verb{background} [character : *                : Write]}{

Background color as a string.  Default value: NULL

}
\item{\verb{background-full-height} [logical : Read / Write]}{

Whether the background color fills the entire line height or only the height of the tagged characters.  Default value: FALSE

}
\item{\verb{background-full-height-set} [logical : Read / Write]}{

Whether this tag affects background height.  Default value: FALSE

}
\item{\verb{background-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

Background color as a (possibly unallocated) GdkColor.

}
\item{\verb{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
\item{\verb{background-stipple} [\code{\link{GdkPixmap}} : *            : Read / Write]}{

Bitmap to use as a mask when drawing the text background.

}
\item{\verb{background-stipple-set} [logical : Read / Write]}{

Whether this tag affects the background stipple.  Default value: FALSE

}
\item{\verb{direction} [\code{\link{GtkTextDirection}} : Read / Write]}{

Text direction, e.g. right-to-left or left-to-right.  Default value: GTK_TEXT_DIR_NONE

}
\item{\verb{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: TRUE

}
\item{\verb{editable-set} [logical : Read / Write]}{

Whether this tag affects text editability.  Default value: FALSE

}
\item{\verb{family} [character : *                : Read / Write]}{

Name of the font family, e.g. Sans, Helvetica, Times, Monospace.  Default value: NULL

}
\item{\verb{family-set} [logical : Read / Write]}{

Whether this tag affects the font family.  Default value: FALSE

}
\item{\verb{font} [character : *                : Read / Write]}{

Font description as string, e.g. \\"Sans Italic 12\\".
  
Note that the initial value of this property depends on
the internals of \code{\link{PangoFontDescription}}.
  Default value: NULL

}
\item{\verb{font-desc} [\code{\link{PangoFontDescription}} : *  : Read / Write]}{

Font description as a PangoFontDescription struct.

}
\item{\verb{foreground} [character : *                : Write]}{

Foreground color as a string.  Default value: NULL

}
\item{\verb{foreground-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

Foreground color as a (possibly unallocated) GdkColor.

}
\item{\verb{foreground-set} [logical : Read / Write]}{

Whether this tag affects the foreground color.  Default value: FALSE

}
\item{\verb{foreground-stipple} [\code{\link{GdkPixmap}} : *            : Read / Write]}{

Bitmap to use as a mask when drawing the text foreground.

}
\item{\verb{foreground-stipple-set} [logical : Read / Write]}{

Whether this tag affects the foreground stipple.  Default value: FALSE

}
\item{\verb{indent} [integer : Read / Write]}{

Amount to indent the paragraph, in pixels.  Default value: 0

}
\item{\verb{indent-set} [logical : Read / Write]}{

Whether this tag affects indentation.  Default value: FALSE

}
\item{\verb{invisible} [logical : Read / Write]}{

Whether this text is hidden.
  
Note that there may still be problems with the support for invisible
text, in particular when navigating programmatically inside a buffer
containing invisible segments.
  Default value: FALSE  Since 2.8

}
\item{\verb{invisible-set} [logical : Read / Write]}{

Whether this tag affects text visibility.  Default value: FALSE

}
\item{\verb{justification} [\code{\link{GtkJustification}} : Read / Write]}{

Left, right, or center justification.  Default value: GTK_JUSTIFY_LEFT

}
\item{\verb{justification-set} [logical : Read / Write]}{

Whether this tag affects paragraph justification.  Default value: FALSE

}
\item{\verb{language} [character : *                : Read / Write]}{

The language this text is in, as an ISO code. Pango can use this as a
hint when rendering the text. If not set, an appropriate default will be
used.
  
Note that the initial value of this property depends on the current
locale, see also \code{\link{gtkGetDefaultLanguage}}.
  Default value: NULL

}
\item{\verb{language-set} [logical : Read / Write]}{

Whether this tag affects the language the text is rendered as.  Default value: FALSE

}
\item{\verb{left-margin} [integer : Read / Write]}{

Width of the left margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\verb{left-margin-set} [logical : Read / Write]}{

Whether this tag affects the left margin.  Default value: FALSE

}
\item{\verb{name} [character : *                : Read / Write / Construct Only]}{

Name used to refer to the text tag. NULL for anonymous tags.  Default value: NULL

}
\item{\verb{paragraph-background} [character : *                : Write]}{

The paragraph background color as a string.
  Default value: NULL  Since 2.8

}
\item{\verb{paragraph-background-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

The paragraph background color as a as a (possibly unallocated)
\code{\link{GdkColor}}.
  Since 2.8

}
\item{\verb{paragraph-background-set} [logical : Read / Write]}{

Whether this tag affects the paragraph background color.  Default value: FALSE

}
\item{\verb{pixels-above-lines} [integer : Read / Write]}{

Pixels of blank space above paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\verb{pixels-above-lines-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels above lines.  Default value: FALSE

}
\item{\verb{pixels-below-lines} [integer : Read / Write]}{

Pixels of blank space below paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\verb{pixels-below-lines-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels above lines.  Default value: FALSE

}
\item{\verb{pixels-inside-wrap} [integer : Read / Write]}{

Pixels of blank space between wrapped lines in a paragraph.  Allowed values: >= 0  Default value: 0

}
\item{\verb{pixels-inside-wrap-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels between wrapped lines.  Default value: FALSE

}
\item{\verb{right-margin} [integer : Read / Write]}{

Width of the right margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\verb{right-margin-set} [logical : Read / Write]}{

Whether this tag affects the right margin.  Default value: FALSE

}
\item{\verb{rise} [integer : Read / Write]}{

Offset of text above the baseline (below the baseline if rise is negative) in Pango units.  Default value: 0

}
\item{\verb{rise-set} [logical : Read / Write]}{

Whether this tag affects the rise.  Default value: FALSE

}
\item{\verb{scale} [numeric : Read / Write]}{

Font size as a scale factor relative to the default font size. This properly adapts to theme changes etc. so is recommended. Pango predefines some scales such as PANGO_SCALE_X_LARGE.  Allowed values: >= 0  Default value: 1

}
\item{\verb{scale-set} [logical : Read / Write]}{

Whether this tag scales the font size by a factor.  Default value: FALSE

}
\item{\verb{size} [integer : Read / Write]}{

Font size in Pango units.  Allowed values: >= 0  Default value: 0

}
\item{\verb{size-points} [numeric : Read / Write]}{

Font size in points.  Allowed values: >= 0  Default value: 0

}
\item{\verb{size-set} [logical : Read / Write]}{

Whether this tag affects the font size.  Default value: FALSE

}
\item{\verb{stretch} [\code{\link{PangoStretch}} : Read / Write]}{

Font stretch as a PangoStretch, e.g. PANGO_STRETCH_CONDENSED.  Default value: PANGO_STRETCH_NORMAL

}
\item{\verb{stretch-set} [logical : Read / Write]}{

Whether this tag affects the font stretch.  Default value: FALSE

}
\item{\verb{strikethrough} [logical : Read / Write]}{

Whether to strike through the text.  Default value: FALSE

}
\item{\verb{strikethrough-set} [logical : Read / Write]}{

Whether this tag affects strikethrough.  Default value: FALSE

}
\item{\verb{style} [\code{\link{PangoStyle}} : Read / Write]}{

Font style as a PangoStyle, e.g. PANGO_STYLE_ITALIC.  Default value: PANGO_STYLE_NORMAL

}
\item{\verb{style-set} [logical : Read / Write]}{

Whether this tag affects the font style.  Default value: FALSE

}
\item{\verb{tabs} [\code{\link{PangoTabArray}} : *        : Read / Write]}{

Custom tabs for this text.

}
\item{\verb{tabs-set} [logical : Read / Write]}{

Whether this tag affects tabs.  Default value: FALSE

}
\item{\verb{underline} [\code{\link{PangoUnderline}} : Read / Write]}{

Style of underline for this text.  Default value: PANGO_UNDERLINE_NONE

}
\item{\verb{underline-set} [logical : Read / Write]}{

Whether this tag affects underlining.  Default value: FALSE

}
\item{\verb{variant} [\code{\link{PangoVariant}} : Read / Write]}{

Font variant as a PangoVariant, e.g. PANGO_VARIANT_SMALL_CAPS.  Default value: PANGO_VARIANT_NORMAL

}
\item{\verb{variant-set} [logical : Read / Write]}{

Whether this tag affects the font variant.  Default value: FALSE

}
\item{\verb{weight} [integer : Read / Write]}{

Font weight as an integer, see predefined values in PangoWeight; for example, PANGO_WEIGHT_BOLD.  Allowed values: >= 0  Default value: 400

}
\item{\verb{weight-set} [logical : Read / Write]}{

Whether this tag affects the font weight.  Default value: FALSE

}
\item{\verb{wrap-mode} [\code{\link{GtkWrapMode}} : Read / Write]}{

Whether to wrap lines never, at word boundaries, or at character boundaries.  Default value: GTK_WRAP_NONE

}
\item{\verb{wrap-mode-set} [logical : Read / Write]}{

Whether this tag affects line wrap mode.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTextTag.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
