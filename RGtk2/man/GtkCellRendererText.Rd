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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkCellRenderer}
                     +----GtkCellRendererText
                           +----\link{GtkCellRendererAccel}
                           +----\link{GtkCellRendererCombo}
                           +----\link{GtkCellRendererSpin}}}
\section{Detailed Description}{A \code{\link{GtkCellRendererText}} renders a given text in its cell, using the font, color and 
style information provided by its properties. The text will be ellipsized if it is 
too long and the ellipsize 
property allows it.
  
If the mode is \code{GTK_CELL_RENDERER_MODE_EDITABLE},
the \code{\link{GtkCellRendererText}} allows to edit its text using an entry.}
\section{Structures}{\describe{\item{\code{GtkCellRendererText}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererText} is the equivalent of \code{\link{gtkCellRendererTextNew}}.}
\section{Signals}{\describe{\item{\code{The (renderer, path, new.text, user.data)}}{
This signal is emitted after \code{renderer} has been edited.
  
It is the responsibility of the application to update the model
and store \code{new.text} at the position indicated by \code{path}.  

\describe{
\item{\code{renderer}}{[\code{\link{GtkCellRendererText}}]  the object which received the signal}
\item{\code{path}}{[character]  the path identifying the edited cell}
\item{\code{new.text}}{[character]  the new text}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\code{align-set} [logical : Read / Write]}{

Whether this tag affects the alignment mode.  Default value: FALSE

}
\item{\code{alignment} [\code{\link{PangoAlignment}} : Read / Write]}{

Specifies how to align the lines of text with respect to each other. 
  
Note that this property describes how to align the lines of text in 
case there are several of them. The "xalign" property of \code{\link{GtkCellRenderer}}, 
on the other hand, sets the horizontal alignment of the whole text.  

  Default value: PANGO\_ALIGN\_LEFT  Since  2.10

}
\item{\code{attributes} [\code{\link{PangoAttrList}} : Read / Write]}{

A list of style attributes to apply to the text of the renderer.

}
\item{\code{background} [character : Write]}{

Background color as a string.  Default value: NULL

}
\item{\code{background-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Background color as a GdkColor.

}
\item{\code{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
\item{\code{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: FALSE

}
\item{\code{editable-set} [logical : Read / Write]}{

Whether this tag affects text editability.  Default value: FALSE

}
\item{\code{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

Specifies the preferred place to ellipsize the string, if the cell renderer 
does not have enough room to display the entire string. Setting it to 
\code{PANGO_ELLIPSIZE_NONE} turns off ellipsizing. See the wrap-width property
for another way of making the text fit into a given width.  

  Default value: PANGO\_ELLIPSIZE\_NONE  Since  2.6

}
\item{\code{ellipsize-set} [logical : Read / Write]}{

Whether this tag affects the ellipsize mode.  Default value: FALSE

}
\item{\code{family} [character : Read / Write]}{

Name of the font family, e.g. Sans, Helvetica, Times, Monospace.  Default value: NULL

}
\item{\code{family-set} [logical : Read / Write]}{

Whether this tag affects the font family.  Default value: FALSE

}
\item{\code{font} [character : Read / Write]}{

Font description as a string, e.g. "Sans Italic 12".  Default value: NULL

}
\item{\code{font-desc} [\code{\link{PangoFontDescription}} : Read / Write]}{

Font description as a PangoFontDescription struct.

}
\item{\code{foreground} [character : Write]}{

Foreground color as a string.  Default value: NULL

}
\item{\code{foreground-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Foreground color as a GdkColor.

}
\item{\code{foreground-set} [logical : Read / Write]}{

Whether this tag affects the foreground color.  Default value: FALSE

}
\item{\code{language} [character : Read / Write]}{

The language this text is in, as an ISO code. Pango can use this as a hint when rendering the text. If you don't understand this parameter, you probably don't need it.  Default value: NULL

}
\item{\code{language-set} [logical : Read / Write]}{

Whether this tag affects the language the text is rendered as.  Default value: FALSE

}
\item{\code{markup} [character : Write]}{

Marked up text to render.  Default value: NULL

}
\item{\code{rise} [integer : Read / Write]}{

Offset of text above the baseline (below the baseline if rise is negative).  Allowed values: >= -2147483647  Default value: 0

}
\item{\code{rise-set} [logical : Read / Write]}{

Whether this tag affects the rise.  Default value: FALSE

}
\item{\code{scale} [numeric : Read / Write]}{

Font scaling factor.  Allowed values: >= 0  Default value: 1

}
\item{\code{scale-set} [logical : Read / Write]}{

Whether this tag scales the font size by a factor.  Default value: FALSE

}
\item{\code{single-paragraph-mode} [logical : Read / Write]}{

Whether or not to keep all text in a single paragraph.  Default value: FALSE

}
\item{\code{size} [integer : Read / Write]}{

Font size.  Allowed values: >= 0  Default value: 0

}
\item{\code{size-points} [numeric : Read / Write]}{

Font size in points.  Allowed values: >= 0  Default value: 0

}
\item{\code{size-set} [logical : Read / Write]}{

Whether this tag affects the font size.  Default value: FALSE

}
\item{\code{stretch} [\code{\link{PangoStretch}} : Read / Write]}{

Font stretch.  Default value: PANGO\_STRETCH\_NORMAL

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

Font style.  Default value: PANGO\_STYLE\_NORMAL

}
\item{\code{style-set} [logical : Read / Write]}{

Whether this tag affects the font style.  Default value: FALSE

}
\item{\code{text} [character : Read / Write]}{

Text to render.  Default value: NULL

}
\item{\code{underline} [\code{\link{PangoUnderline}} : Read / Write]}{

Style of underline for this text.  Default value: PANGO\_UNDERLINE\_NONE

}
\item{\code{underline-set} [logical : Read / Write]}{

Whether this tag affects underlining.  Default value: FALSE

}
\item{\code{variant} [\code{\link{PangoVariant}} : Read / Write]}{

Font variant.  Default value: PANGO\_VARIANT\_NORMAL

}
\item{\code{variant-set} [logical : Read / Write]}{

Whether this tag affects the font variant.  Default value: FALSE

}
\item{\code{weight} [integer : Read / Write]}{

Font weight.  Allowed values: >= 0  Default value: 400

}
\item{\code{weight-set} [logical : Read / Write]}{

Whether this tag affects the font weight.  Default value: FALSE

}
\item{\code{width-chars} [integer : Read / Write]}{

The desired width of the cell, in characters. If this property is set to
-1, the width will be calculated automatically, otherwise the cell will
request either 3 characters or the property value, whichever is greater.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{wrap-mode} [\code{\link{PangoWrapMode}} : Read / Write]}{

Specifies how to break the string into multiple lines, if the cell 
renderer does not have enough room to display the entire string. 
This property has no effect unless the wrap-width property is set.  

  Default value: PANGO\_WRAP\_CHAR  Since  2.8

}
\item{\code{wrap-width} [integer : Read / Write]}{

Specifies the width at which the text is wrapped. The wrap-mode property can 
be used to influence at what character positions the line breaks can be placed.
Setting wrap-width to -1 turns wrapping off.  

  Allowed values: >= -1  Default value: -1  Since  2.8

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
