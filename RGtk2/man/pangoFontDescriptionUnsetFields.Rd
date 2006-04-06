\alias{pangoFontDescriptionUnsetFields}
\name{pangoFontDescriptionUnsetFields}
\title{pangoFontDescriptionUnsetFields}
\description{Unsets some of the fields in a \code{\link{PangoFontDescription}}. Note that
this merely marks the fields cleared, it does not clear the
settings for those fields, to clear a family name set with
\code{\link{pangoFontDescriptionSetFamilyStatic}} so that it won't
be returned by subsequent calls to \code{\link{pangoFontDescriptionGetFamily}},
you must actually call pango\_font\_description\_set\_family (desc, NULL);}
\usage{pangoFontDescriptionUnsetFields(object, to.unset)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{to.unset}}{[\code{\link{PangoFontMask}}]  bitmask of fields in the \code{desc} to unset.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
