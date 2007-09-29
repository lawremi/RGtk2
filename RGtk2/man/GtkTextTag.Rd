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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTextTag}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  
Tags should be in the \code{\link{GtkTextTagTable}} for a given \code{\link{GtkTextBuffer}}
before using them with that buffer.
  
\code{\link{gtkTextBufferCreateTag}} is the best way to create tags.
See \command{gtk-demo} for numerous examples.
  
The "invisible" property was not implemented for GTK+ 2.0; it's
planned to be implemented in future releases.}
\section{Structures}{\describe{
\item{\code{GtkTextTag}}{
\emph{undocumented
}

}
\item{\code{GtkTextAttributes}}{
Using \code{\link{GtkTextAttributes}} directly should rarely be necessary. It's
primarily useful with \code{\link{gtkTextIterGetAttributes}}. As with most
GTK+ structs, the fields in this struct should only be read, never
modified directly.

\describe{
\item{\code{appearance}}{[\code{\link{GtkTextAppearance}}] pointer to sub-struct containing certain attributes}
\item{\code{justification}}{[\code{\link{GtkJustification}}] }
\item{\code{direction}}{[\code{\link{GtkTextDirection}}] }
\item{\code{font}}{[\code{\link{PangoFontDescription}}] }
\item{\code{fontScale}}{[numeric] }
\item{\code{leftMargin}}{[integer] }
\item{\code{indent}}{[integer] }
\item{\code{rightMargin}}{[integer] }
\item{\code{pixelsAboveLines}}{[integer] }
\item{\code{pixelsBelowLines}}{[integer] }
\item{\code{pixelsInsideWrap}}{[integer] }
\item{\code{tabs}}{[\code{\link{PangoTabArray}}] }
\item{\code{wrapMode}}{[\code{\link{GtkWrapMode}}] }
\item{\code{language}}{[\code{\link{PangoLanguage}}] }
\item{\code{invisible}}{[numeric] }
\item{\code{bgFullHeight}}{[numeric] }
\item{\code{editable}}{[numeric] }
\item{\code{realized}}{[numeric] }
}

}
\item{\code{GtkTextAppearance}}{
\emph{undocumented
}

\describe{
\item{\code{bgColor}}{[\code{\link{GdkColor}}] }
\item{\code{fgColor}}{[\code{\link{GdkColor}}] }
\item{\code{bgStipple}}{[\code{\link{GdkBitmap}}] }
\item{\code{fgStipple}}{[\code{\link{GdkBitmap}}] }
\item{\code{rise}}{[integer] }
\item{\code{underline}}{[numeric] }
\item{\code{strikethrough}}{[numeric] }
\item{\code{drawBg}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkTextTag} is the equivalent of \code{\link{gtkTextTagNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GtkWrapMode}}{
Describes a type of line wrapping.

\describe{
\item{\code{none}}{do not wrap lines; just make the text area wider}
\item{\code{char}}{wrap text, breaking lines anywhere the cursor can
                appear (between characters, usually - if you want to
                be technical, between graphemes, see
                \code{\link{pangoGetLogAttrs}})}
\item{\code{word}}{wrap text, breaking lines in between words}
\item{\code{word_char}}{wrap text, breaking lines in between words, or if 
                that is not enough, also between graphemes.}
}

}}}
\section{Signals}{\describe{\item{\code{The (tag, object, event, iter, user.data)}}{
The ::event signal is emitted when an event occurs on a region of the
buffer marked with this tag.  

\describe{
\item{\code{tag}}{[\code{\link{GtkTextTag}}]  the \code{\link{GtkTextTag}} on which the signal is emitted}
\item{\code{object}}{[\code{\link{GObject}}]  the object the event was fired from (typically a \code{\link{GtkTextView}})}
\item{\code{event}}{[\code{\link{GdkEvent}}]  the event which triggered the signal}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}} pointing at the location the event occured}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [logical]  \code{TRUE} to stop other handlers from being invoked for the
event. \code{FALSE} to propagate the event further.

}}}
\section{Properties}{\describe{
\item{\code{accumulative-margin} [logical : Read / Write]}{

Whether the margins accumulate or override each other.
  
When set to \code{TRUE} the margins of this tag are added to the margins 
of any other non-accumulative margins present. When set to \code{FALSE} 
the margins override one another (the default).  

  Default value: FALSE  Since  2.12

}
\item{\code{background} [character : Write]}{

Background color as a string.  Default value: NULL

}
\item{\code{background-full-height} [logical : Read / Write]}{

Whether the background color fills the entire line height or only the height of the tagged characters.  Default value: FALSE

}
\item{\code{background-full-height-set} [logical : Read / Write]}{

Whether this tag affects background height.  Default value: FALSE

}
\item{\code{background-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Background color as a (possibly unallocated) GdkColor.

}
\item{\code{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
\item{\code{background-stipple} [\code{\link{GdkPixmap}} : Read / Write]}{

Bitmap to use as a mask when drawing the text background.

}
\item{\code{background-stipple-set} [logical : Read / Write]}{

Whether this tag affects the background stipple.  Default value: FALSE

}
\item{\code{direction} [\code{\link{GtkTextDirection}} : Read / Write]}{

Text direction, e.g. right-to-left or left-to-right.  Default value: GTK\_TEXT\_DIR\_NONE

}
\item{\code{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: TRUE

}
\item{\code{editable-set} [logical : Read / Write]}{

Whether this tag affects text editability.  Default value: FALSE

}
\item{\code{family} [character : Read / Write]}{

Name of the font family, e.g. Sans, Helvetica, Times, Monospace.  Default value: NULL

}
\item{\code{family-set} [logical : Read / Write]}{

Whether this tag affects the font family.  Default value: FALSE

}
\item{\code{font} [character : Read / Write]}{

Font description as string, e.g. \\"Sans Italic 12\\". 
  
Note that the initial value of this property depends on
the internals of \code{\link{PangoFontDescription}}.  

  Default value: NULL

}
\item{\code{font-desc} [\code{\link{PangoFontDescription}} : Read / Write]}{

Font description as a PangoFontDescription struct.

}
\item{\code{foreground} [character : Write]}{

Foreground color as a string.  Default value: NULL

}
\item{\code{foreground-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Foreground color as a (possibly unallocated) GdkColor.

}
\item{\code{foreground-set} [logical : Read / Write]}{

Whether this tag affects the foreground color.  Default value: FALSE

}
\item{\code{foreground-stipple} [\code{\link{GdkPixmap}} : Read / Write]}{

Bitmap to use as a mask when drawing the text foreground.

}
\item{\code{foreground-stipple-set} [logical : Read / Write]}{

Whether this tag affects the foreground stipple.  Default value: FALSE

}
\item{\code{indent} [integer : Read / Write]}{

Amount to indent the paragraph, in pixels.  Default value: 0

}
\item{\code{indent-set} [logical : Read / Write]}{

Whether this tag affects indentation.  Default value: FALSE

}
\item{\code{invisible} [logical : Read / Write]}{

Whether this text is hidden.
  
Note that there may still be problems with the support for invisible 
text, in particular when navigating programmatically inside a buffer
containing invisible segments.  

  Default value: FALSE  Since  2.8

}
\item{\code{invisible-set} [logical : Read / Write]}{

Whether this tag affects text visibility.  Default value: FALSE

}
\item{\code{justification} [\code{\link{GtkJustification}} : Read / Write]}{

Left, right, or center justification.  Default value: GTK\_JUSTIFY\_LEFT

}
\item{\code{justification-set} [logical : Read / Write]}{

Whether this tag affects paragraph justification.  Default value: FALSE

}
\item{\code{language} [character : Read / Write]}{

The language this text is in, as an ISO code. Pango can use this as a 
hint when rendering the text. If not set, an appropriate default will be 
used.
  
Note that the initial value of this property depends on the current
locale, see also \code{\link{gtkGetDefaultLanguage}}.  

  Default value: NULL

}
\item{\code{language-set} [logical : Read / Write]}{

Whether this tag affects the language the text is rendered as.  Default value: FALSE

}
\item{\code{left-margin} [integer : Read / Write]}{

Width of the left margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\code{left-margin-set} [logical : Read / Write]}{

Whether this tag affects the left margin.  Default value: FALSE

}
\item{\code{name} [character : Read / Write / Construct Only]}{

Name used to refer to the text tag. NULL for anonymous tags.  Default value: NULL

}
\item{\code{paragraph-background} [character : Write]}{

The paragraph background color as a string.  

  Default value: NULL  Since  2.8

}
\item{\code{paragraph-background-gdk} [\code{\link{GdkColor}} : Read / Write]}{

The paragraph background color as a as a (possibly unallocated) 
\code{\link{GdkColor}}.  

  Since  2.8

}
\item{\code{paragraph-background-set} [logical : Read / Write]}{

Whether this tag affects the paragraph background color.  Default value: FALSE

}
\item{\code{pixels-above-lines} [integer : Read / Write]}{

Pixels of blank space above paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\code{pixels-above-lines-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels above lines.  Default value: FALSE

}
\item{\code{pixels-below-lines} [integer : Read / Write]}{

Pixels of blank space below paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\code{pixels-below-lines-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels above lines.  Default value: FALSE

}
\item{\code{pixels-inside-wrap} [integer : Read / Write]}{

Pixels of blank space between wrapped lines in a paragraph.  Allowed values: >= 0  Default value: 0

}
\item{\code{pixels-inside-wrap-set} [logical : Read / Write]}{

Whether this tag affects the number of pixels between wrapped lines.  Default value: FALSE

}
\item{\code{right-margin} [integer : Read / Write]}{

Width of the right margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\code{right-margin-set} [logical : Read / Write]}{

Whether this tag affects the right margin.  Default value: FALSE

}
\item{\code{rise} [integer : Read / Write]}{

Offset of text above the baseline (below the baseline if rise is negative) in Pango units.  Default value: 0

}
\item{\code{rise-set} [logical : Read / Write]}{

Whether this tag affects the rise.  Default value: FALSE

}
\item{\code{scale} [numeric : Read / Write]}{

Font size as a scale factor relative to the default font size. This properly adapts to theme changes etc. so is recommended. Pango predefines some scales such as PANGO\_SCALE\_X\_LARGE.  Allowed values: >= 0  Default value: 1

}
\item{\code{scale-set} [logical : Read / Write]}{

Whether this tag scales the font size by a factor.  Default value: FALSE

}
\item{\code{size} [integer : Read / Write]}{

Font size in Pango units.  Allowed values: >= 0  Default value: 0

}
\item{\code{size-points} [numeric : Read / Write]}{

Font size in points.  Allowed values: >= 0  Default value: 0

}
\item{\code{size-set} [logical : Read / Write]}{

Whether this tag affects the font size.  Default value: FALSE

}
\item{\code{stretch} [\code{\link{PangoStretch}} : Read / Write]}{

Font stretch as a PangoStretch, e.g. PANGO\_STRETCH\_CONDENSED.  Default value: PANGO\_STRETCH\_NORMAL

}
\item{\code{stretch-set} [logical : Read / Write]}{

Whether this tag affects the font stretch.  Default value: FALSE

}
\item{\code{strikethrough} [logical : Read / Write]}{

Whether to strike through the text.  Default value: FALSE

}
\item{\code{strikethrough-set} [logical : Read / Write]}{

Whether this tag affects strikethrough.  Default value: FALSE

}
\item{\code{style} [\code{\link{PangoStyle}} : Read / Write]}{

Font style as a PangoStyle, e.g. PANGO\_STYLE\_ITALIC.  Default value: PANGO\_STYLE\_NORMAL

}
\item{\code{style-set} [logical : Read / Write]}{

Whether this tag affects the font style.  Default value: FALSE

}
\item{\code{tabs} [\code{\link{PangoTabArray}} : Read / Write]}{

Custom tabs for this text.

}
\item{\code{tabs-set} [logical : Read / Write]}{

Whether this tag affects tabs.  Default value: FALSE

}
\item{\code{underline} [\code{\link{PangoUnderline}} : Read / Write]}{

Style of underline for this text.  Default value: PANGO\_UNDERLINE\_NONE

}
\item{\code{underline-set} [logical : Read / Write]}{

Whether this tag affects underlining.  Default value: FALSE

}
\item{\code{variant} [\code{\link{PangoVariant}} : Read / Write]}{

Font variant as a PangoVariant, e.g. PANGO\_VARIANT\_SMALL\_CAPS.  Default value: PANGO\_VARIANT\_NORMAL

}
\item{\code{variant-set} [logical : Read / Write]}{

Whether this tag affects the font variant.  Default value: FALSE

}
\item{\code{weight} [integer : Read / Write]}{

Font weight as an integer, see predefined values in PangoWeight; for example, PANGO\_WEIGHT\_BOLD.  Allowed values: >= 0  Default value: 400

}
\item{\code{weight-set} [logical : Read / Write]}{

Whether this tag affects the font weight.  Default value: FALSE

}
\item{\code{wrap-mode} [\code{\link{GtkWrapMode}} : Read / Write]}{

Whether to wrap lines never, at word boundaries, or at character boundaries.  Default value: GTK\_WRAP\_NONE

}
\item{\code{wrap-mode-set} [logical : Read / Write]}{

Whether this tag affects line wrap mode.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextTag.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
