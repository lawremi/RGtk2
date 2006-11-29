\alias{pangoAttrIteratorGetFont}
\name{pangoAttrIteratorGetFont}
\title{pangoAttrIteratorGetFont}
\description{Get the font and other attributes at the current iterator position.}
\usage{pangoAttrIteratorGetFont(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoAttrIterator}}]  a \code{\link{PangoAttrIterator}}}}
\value{
A list containing the following elements:
\item{\code{desc}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}} to fill in with the current values.
       The family name in this structure will be set using
       \code{\link{pangoFontDescriptionSetFamilyStatic}} using values from
       an attribute in the \code{\link{PangoAttrList}} associated with the iterator,
       so if you plan to keep it around, you must call:
       \code{pango_font_description_set_family (desc, pango_font_description_get_family (desc))}.}
\item{\code{language}}{[\code{\link{PangoLanguage}}]  if non-\code{NULL}, location to store language tag for item, or \code{NULL}
           if none is found.}
\item{\code{extra.attrs}}{[list]  if non-\code{NULL}, location in which to store a list of non-font
          attributes at the the current position; only the highest priority
          value of each attribute will be added to this list. In order
          to free this value, you must call \code{pangoAttributeDestroy()} on
          each member.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
