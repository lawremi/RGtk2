\alias{pangoRendererPartChanged}
\name{pangoRendererPartChanged}
\title{pangoRendererPartChanged}
\description{Informs Pango that the way that the rendering is done
for \code{part} has changed in a way that would prevent multiple
pieces being joined together into one drawing call. For
instance, if a subclass of \code{\link{PangoRenderer}} was to add a stipple
option for drawing underlines, it needs to call}
\usage{pangoRendererPartChanged(object, part)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\verb{part}}{[\code{\link{PangoRenderPart}}]  the part for which rendering has changed.}
}
\details{\preformatted{pango_renderer_part_changed (render, PANGO_RENDER_PART_UNDERLINE);
}  
When the stipple changes or underlines with different stipples
might be joined together. Pango automatically calls this for
changes to colors. (See \code{\link{pangoRendererSetColor}})  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
