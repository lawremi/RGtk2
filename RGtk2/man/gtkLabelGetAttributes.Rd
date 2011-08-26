\alias{gtkLabelGetAttributes}
\name{gtkLabelGetAttributes}
\title{gtkLabelGetAttributes}
\description{Gets the attribute list that was set on the label using
\code{\link{gtkLabelSetAttributes}}, if any. This function does
not reflect attributes that come from the labels markup
(see \code{\link{gtkLabelSetMarkup}}). If you want to get the
effective attributes for the label, use
pango_layout_get_attribute (gtk_label_get_layout (label)).}
\usage{gtkLabelGetAttributes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\value{[\code{\link{PangoAttrList}}] the attribute list, or \code{NULL} if none was set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
