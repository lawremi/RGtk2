\alias{pangoAttrIteratorGetFont}
\name{pangoAttrIteratorGetFont}
\title{pangoAttrIteratorGetFont}
\description{Get the font and other attributes at the current iterator position.}
\usage{pangoAttrIteratorGetFont(object)}
\arguments{\item{\verb{object}}{a \code{\link{PangoAttrIterator}}}}
\value{
A list containing the following elements:
\item{\verb{desc}}{a \code{\link{PangoFontDescription}} to fill in with the current values.
       The family name in this structure will be set using
       \code{\link{pangoFontDescriptionSetFamilyStatic}} using values from
       an attribute in the \code{\link{PangoAttrList}} associated with the iterator,
       so if you plan to keep it around, you must call:
       \code{pango_font_description_set_family (desc, pango_font_description_get_family (desc))}.}
\item{\verb{language}}{if non-\code{NULL}, location to store language tag for item, or \code{NULL}
           if none is found.}
\item{\verb{extra.attrs}}{ if non-\code{NULL},
          location in which to store a list of non-font
          attributes at the the current position; only the highest priority
          value of each attribute will be added to this list. In order
          to free this value, you must call \code{pangoAttributeDestroy()} on
          each member. \emph{[element type Pango.Attribute): (transfer full]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
