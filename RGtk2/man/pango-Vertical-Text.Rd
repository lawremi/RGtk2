\alias{pango-Vertical-Text}
\alias{PangoGravity}
\alias{PangoGravityHint}
\name{pango-Vertical-Text}
\title{Vertical Text}
\description{Laying text out in vertical directions}
\section{Methods and Functions}{
\code{\link{pangoGravityGetForMatrix}(matrix)}\cr
\code{\link{pangoGravityGetForScript}(script, base.gravity, hint)}\cr
\code{\link{pangoGravityGetForScriptAndWidth}(script, wide, base.gravity, hint)}\cr
\code{\link{pangoGravityToRotation}(base.gravity)}\cr
}
\section{Detailed Description}{Since 1.16, Pango is able to correctly lay vertical text out.  In fact, it can
set layouts of mixed vertical and non-vertical text.  This section describes
the types used for setting vertical text parameters.
  
The way this is implemented is through the concept of
\dfn{gravity}.  Gravity of normal Latin text is south.  A
gravity value of east means that glyphs will be rotated ninety degrees
counterclockwise.  So, to render vertical text one needs to set the gravity
and rotate the layout using the matrix machinery already in place.  This has
the huge advantage that most algorithms working on a \code{\link{PangoLayout}} do not need
any change as the assumption that lines run in the X direction and stack in
the Y direction holds even for vertical text layouts.
  
Applications should only need to set base gravity on \code{\link{PangoContext}} in use, and
let Pango decide the gravity assigned to each run of text.  This automatically
handles text with mixed scripts.  A very common use is to set the context base
gravity to auto using \code{\link{pangoContextSetBaseGravity}}
and rotate the layout normally.  Pango will make sure that
Asian languages take the right form, while other scripts are rotated normally.
  
The correct way to set gravity on a layout is to set it on the context
associated with it using \code{\link{pangoContextSetBaseGravity}}.  The context
of a layout can be accessed using \code{\link{pangoLayoutGetContext}}.  The currently
set base gravity of the context can be accessed using
\code{\link{pangoContextGetBaseGravity}} and the \dfn{resolved}
gravity of it using \code{\link{pangoContextGetGravity}}.  The resolved gravity is
the same as the base gravity for the most part, except that if the base
gravity is set to \code{PANGO_GRAVITY_AUTO}, the resolved gravity will depend
on the current matrix set on context, and is derived using
\code{\link{pangoGravityGetForMatrix}}.
  
The next thing an application may want to set on the context is the
\dfn{gravity hint}.  A \code{\link{PangoGravityHint}} instructs how
different scripts should react to the set base gravity.
  
Font descriptions have a gravity property too, that can be set using
\code{\link{pangoFontDescriptionSetGravity}} and accessed using
\code{\link{pangoFontDescriptionGetGravity}}.  However, those are rarely useful
from application code and are mainly used by \code{\link{PangoLayout}} internally.
  
Last but not least, one can create \code{\link{PangoAttribute}}s for gravity
and gravity hint using \code{\link{pangoAttrGravityNew}} and
\code{\link{pangoAttrGravityHintNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{PangoGravity}}{
The \code{\link{PangoGravity}} type represents the orientation of glyphs in a segment
of text.  This is useful when rendering vertical text layouts.  In
those situations, the layout is rotated using a non-identity PangoMatrix,
and then glyph orientation is controlled using \code{\link{PangoGravity}}.
Not every value in this enumeration makes sense for every usage of
\code{\link{PangoGravity}}; for example, \code{PANGO_GRAVITY_AUTO} only can be passed to
\code{\link{pangoContextSetBaseGravity}} and can only be returned by
\code{\link{pangoContextGetBaseGravity}}.
  
See also: \code{\link{PangoGravityHint}}  
  Since 1.16

\describe{
\item{\verb{south}}{ Glyphs stand upright (default)}
\item{\verb{east}}{ Glyphs are rotated 90 degrees clockwise}
\item{\verb{north}}{ Glyphs are upside-down}
\item{\verb{west}}{ Glyphs are rotated 90 degrees counter-clockwise}
\item{\verb{auto}}{ Gravity is resolved from the context matrix}
}

}
\item{\verb{PangoGravityHint}}{
The \code{\link{PangoGravityHint}} defines how horizontal scripts should behave in a
vertical context.  That is, English excerpt in a vertical paragraph for
example.
  
See \code{\link{PangoGravity}}.  
  Since 1.16

\describe{
\item{\verb{natural}}{ scripts will take their natural gravity based
on the base gravity and the script.  This is the default.}
\item{\verb{strong}}{ always use the base gravity set, regardless of
the script.}
\item{\verb{line}}{ for scripts not in their natural direction (eg.
Latin in East gravity), choose per-script gravity such that every script
respects the line progression.  This means, Latin and Arabic will take
opposite gravities and both flow top-to-bottom for example.}
}

}
}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
