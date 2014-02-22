\alias{pangoGlyphItemApplyAttrs}
\name{pangoGlyphItemApplyAttrs}
\title{pangoGlyphItemApplyAttrs}
\description{Splits a shaped item (PangoGlyphItem) into multiple items based
on an attribute list. The idea is that if you have attributes
that don't affect shaping, such as color or underline, to avoid
affecting shaping, you filter them out (\code{\link{pangoAttrListFilter}}),
apply the shaping process and then reapply them to the result using
this function.}
\usage{pangoGlyphItemApplyAttrs(glyph.item, text, list)}
\arguments{
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a shaped item}
\item{\verb{text}}{[char]  text that \code{list} applies to}
\item{\verb{list}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
}
\details{All attributes that start or end inside a cluster are applied
to that cluster; for instance, if half of a cluster is underlined
and the other-half strikethrough, then the cluster will end
up with both underline and strikethrough attributes. In these
cases, it may happen that item->extra_attrs for some of the
result items can have multiple attributes of the same type.
  
This function takes ownership of \code{glyph.item}; it will be reused
as one of the elements in the list.  
  Since 1.2}
\value{[list]  a list of glyph items resulting from splitting
  \code{glyph.item}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
