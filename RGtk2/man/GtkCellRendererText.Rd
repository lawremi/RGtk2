\alias{GtkCellRendererText}
\alias{gtkCellRendererText}
\name{GtkCellRendererText}
\title{GtkCellRendererText}
\description{Renders text in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererTextNew}()}\cr
\code{\link{gtkCellRendererTextSetFixedHeightFromFont}(object, number.of.rows)}\cr
\code{gtkCellRendererText()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererText
                           +----GtkCellRendererAccel
                           +----GtkCellRendererCombo
                           +----GtkCellRendererSpin}}
\section{Detailed Description}{A \code{\link{GtkCellRendererText}} renders a given text in its cell, using the font, color and
style information provided by its properties. The text will be ellipsized if it is
too long and the ellipsize
property allows it.
  
If the mode is \code{GTK_CELL_RENDERER_MODE_EDITABLE},
the \code{\link{GtkCellRendererText}} allows to edit its text using an entry.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererText}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererText} is the equivalent of \code{\link{gtkCellRendererTextNew}}.}
\section{Signals}{\describe{\item{\code{edited(renderer, path, new.text, user.data)}}{
This signal is emitted after \code{renderer} has been edited.
  
It is the responsibility of the application to update the model
and store \code{new.text} at the position indicated by \code{path}.

\describe{
\item{\code{renderer}}{the object which received the signal}
\item{\code{path}}{the path identifying the edited cell}
\item{\code{new.text}}{the new text}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{align-set} [logical : Read / Write]}{

Whether this tag affects the alignment mode.  Default value: FALSE

}
\item{\verb{alignment} [\code{\link{PangoAlignment}} : Read / Write]}{

Specifies how to align the lines of text with respect to each other.
  
Note that this property describes how to align the lines of text in
case there are several of them. The "xalign" property of \code{\link{GtkCellRenderer}},
on the other hand, sets the horizontal alignment of the whole text.
  Default value: PANGO_ALIGN_LEFT  Since 2.10

}
\item{\verb{attributes} [\code{\link{PangoAttrList}} : *        : Read / Write]}{

A list of style attributes to apply to the text of the renderer.

}
\item{\verb{background} [character : *                : Write]}{

Background color as a string.  Default value: NULL

}
\item{\verb{background-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

Background color as a GdkColor.

}
\item{\verb{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
\item{\verb{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: FALSE

}
\item{\verb{editable-set} [logical : Read / Write]}{

Whether this tag affects text editability.  Default value: FALSE

}
\item{\verb{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

Specifies the preferred place to ellipsize the string, if the cell renderer
does not have enough room to display the entire string. Setting it to
\code{PANGO_ELLIPSIZE_NONE} turns off ellipsizing. See the wrap-width property
for another way of making the text fit into a given width.
  Default value: PANGO_ELLIPSIZE_NONE  Since 2.6

}
\item{\verb{ellipsize-set} [logical : Read / Write]}{

Whether this tag affects the ellipsize mode.  Default value: FALSE

}
\item{\verb{family} [character : *                : Read / Write]}{

Name of the font family, e.g. Sans, Helvetica, Times, Monospace.  Default value: NULL

}
\item{\verb{family-set} [logical : Read / Write]}{

Whether this tag affects the font family.  Default value: FALSE

}
\item{\verb{font} [character : *                : Read / Write]}{

Font description as a string, e.g. "Sans Italic 12".  Default value: NULL

}
\item{\verb{font-desc} [\code{\link{PangoFontDescription}} : *  : Read / Write]}{

Font description as a PangoFontDescription struct.

}
\item{\verb{foreground} [character : *                : Write]}{

Foreground color as a string.  Default value: NULL

}
\item{\verb{foreground-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

Foreground color as a GdkColor.

}
\item{\verb{foreground-set} [logical : Read / Write]}{

Whether this tag affects the foreground color.  Default value: FALSE

}
\item{\verb{language} [character : *                : Read / Write]}{

The language this text is in, as an ISO code. Pango can use this as a hint when rendering the text. If you don't understand this parameter, you probably don't need it.  Default value: NULL

}
\item{\verb{language-set} [logical : Read / Write]}{

Whether this tag affects the language the text is rendered as.  Default value: FALSE

}
\item{\verb{markup} [character : *                : Write]}{

Marked up text to render.  Default value: NULL

}
\item{\verb{rise} [integer : Read / Write]}{

Offset of text above the baseline (below the baseline if rise is negative).  Allowed values: >= -2147483647  Default value: 0

}
\item{\verb{rise-set} [logical : Read / Write]}{

Whether this tag affects the rise.  Default value: FALSE

}
\item{\verb{scale} [numeric : Read / Write]}{

Font scaling factor.  Allowed values: >= 0  Default value: 1

}
\item{\verb{scale-set} [logical : Read / Write]}{

Whether this tag scales the font size by a factor.  Default value: FALSE

}
\item{\verb{single-paragraph-mode} [logical : Read / Write]}{

Whether or not to keep all text in a single paragraph.  Default value: FALSE

}
\item{\verb{size} [integer : Read / Write]}{

Font size.  Allowed values: >= 0  Default value: 0

}
\item{\verb{size-points} [numeric : Read / Write]}{

Font size in points.  Allowed values: >= 0  Default value: 0

}
\item{\verb{size-set} [logical : Read / Write]}{

Whether this tag affects the font size.  Default value: FALSE

}
\item{\verb{stretch} [\code{\link{PangoStretch}} : Read / Write]}{

Font stretch.  Default value: PANGO_STRETCH_NORMAL

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

Font style.  Default value: PANGO_STYLE_NORMAL

}
\item{\verb{style-set} [logical : Read / Write]}{

Whether this tag affects the font style.  Default value: FALSE

}
\item{\verb{text} [character : *                : Read / Write]}{

Text to render.  Default value: NULL

}
\item{\verb{underline} [\code{\link{PangoUnderline}} : Read / Write]}{

Style of underline for this text.  Default value: PANGO_UNDERLINE_NONE

}
\item{\verb{underline-set} [logical : Read / Write]}{

Whether this tag affects underlining.  Default value: FALSE

}
\item{\verb{variant} [\code{\link{PangoVariant}} : Read / Write]}{

Font variant.  Default value: PANGO_VARIANT_NORMAL

}
\item{\verb{variant-set} [logical : Read / Write]}{

Whether this tag affects the font variant.  Default value: FALSE

}
\item{\verb{weight} [integer : Read / Write]}{

Font weight.  Allowed values: >= 0  Default value: 400

}
\item{\verb{weight-set} [logical : Read / Write]}{

Whether this tag affects the font weight.  Default value: FALSE

}
\item{\verb{width-chars} [integer : Read / Write]}{

The desired width of the cell, in characters. If this property is set to
-1, the width will be calculated automatically, otherwise the cell will
request either 3 characters or the property value, whichever is greater.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{wrap-mode} [\code{\link{PangoWrapMode}} : Read / Write]}{

Specifies how to break the string into multiple lines, if the cell
renderer does not have enough room to display the entire string.
This property has no effect unless the wrap-width property is set.
  Default value: PANGO_WRAP_CHAR  Since 2.8

}
\item{\verb{wrap-width} [integer : Read / Write]}{

Specifies the width at which the text is wrapped. The wrap-mode property can
be used to influence at what character positions the line breaks can be placed.
Setting wrap-width to -1 turns wrapping off.
  Allowed values: >= -1  Default value: -1  Since 2.8

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
