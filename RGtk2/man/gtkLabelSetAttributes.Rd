\alias{gtkLabelSetAttributes}
\name{gtkLabelSetAttributes}
\title{gtkLabelSetAttributes}
\description{Sets a \code{\link{PangoAttrList}}; the attributes in the list are applied to the
label text. The attributes set with this function will be ignored
if the "use_underline" property or the "use_markup" property
is \code{TRUE}.}
\usage{gtkLabelSetAttributes(object, attrs)}
\arguments{
\item{\code{object}}{[\code{\link{GtkLabel}}]  a \code{\link{GtkLabel}}}
\item{\code{attrs}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
