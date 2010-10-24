\alias{gtkIconSetAddSource}
\name{gtkIconSetAddSource}
\title{gtkIconSetAddSource}
\description{Icon sets have a list of \code{\link{GtkIconSource}}, which they use as base
icons for rendering icons in different states and sizes. Icons are
scaled, made to look insensitive, etc. in
\code{\link{gtkIconSetRenderIcon}}, but \code{\link{GtkIconSet}} needs base images to
work with. The base images and when to use them are described by
a \code{\link{GtkIconSource}}.}
\usage{gtkIconSetAddSource(object, source)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconSet}}}
\item{\verb{source}}{a \code{\link{GtkIconSource}}}
}
\details{This function copies \code{source}, so you can reuse the same source immediately
without affecting the icon set.
  
An example of when you'd use this function: a web browser's "Back
to Previous Page" icon might point in a different direction in
Hebrew and in English; it might look different when insensitive;
and it might change size depending on toolbar mode (small/large
icons). So a single icon set would contain all those variants of
the icon, and you might add a separate source for each one.
  
You should nearly always add a "default" icon source with all
fields wildcarded, which will be used as a fallback if no more
specific source matches. \code{\link{GtkIconSet}} always prefers more specific
icon sources to more generic icon sources. The order in which you
add the sources to the icon set does not matter.
  \code{\link{gtkIconSetNewFromPixbuf}} creates a new icon set with a
default icon source based on the given pixbuf.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
