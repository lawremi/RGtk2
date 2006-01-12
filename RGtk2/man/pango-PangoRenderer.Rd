\alias{pango-PangoRenderer}
\alias{PangoRenderer}
\alias{PangoRenderPart}
\name{pango-PangoRenderer}
\title{PangoRenderer}
\description{Rendering driver base class}
\usage{
\link{pangoRendererDrawLayout}(object, layout, x, y)
\link{pangoRendererDrawLayoutLine}(object, line, x, y)
\link{pangoRendererDrawGlyphs}(object, font, glyphs, x, y)
\link{pangoRendererDrawRectangle}(object, part, x, y, width, height)
\link{pangoRendererDrawErrorUnderline}(object, x, y, width, height)
\link{pangoRendererDrawTrapezoid}(object, part, y1., x11, x21, y2, x12, x22)
\link{pangoRendererDrawGlyph}(object, font, glyph, x, y)
\link{pangoRendererActivate}(object)
\link{pangoRendererDeactivate}(object)
\link{pangoRendererPartChanged}(object, part)
\link{pangoRendererSetColor}(object, part, color)
\link{pangoRendererGetColor}(object, part)
\link{pangoRendererSetMatrix}(object, matrix)
\link{pangoRendererGetMatrix}(object)
}
\details{\code{\link{PangoRenderer}} is a base class that contains the necessary logic for
rendering a PangoLayout or PangoLayoutLine. By subclassing
PangoRenderer and overriding operations such as \code{draw.glyphs} and
\code{draw.rectangle}, renderers for particular font backends and
destinations can be created.}
\section{Structures}{\describe{\item{\code{PangoRenderer}}{
\code{\link{PangoRenderer}} is a base class for objects that are used to
render Pango objects such as \code{\link{PangoGlyphString}} and
\code{\link{PangoLayout}}.  

  Since  1.8

\describe{\item{\code{matrix}}{[\code{\link{PangoMatrix}}]  the current transformation matrix for the Renderer; may
   be \code{NULL}, which should be treated the same as the identity matrix.}}

}}}
\section{Enums and Flags}{\describe{\item{\code{enum PangoRenderPart}}{
\code{\link{PangoRenderPart}} defines different items to render for such
purposes as setting colors.  

  Since  1.8

\describe{
\item{\code{PANGO_RENDER_PART_FOREGROUND (foreground)}}{ the text itself}
\item{\code{PANGO_RENDER_PART_BACKGROUND (background)}}{ the area behind the text}
\item{\code{PANGO_RENDER_PART_UNDERLINE (underline)}}{ underlines}
\item{\code{PANGO_RENDER_PART_STRIKETHROUGH (strikethrough)}}{ strikethrough lines}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-PangoRenderer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
