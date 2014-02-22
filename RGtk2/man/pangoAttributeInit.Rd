\alias{pangoAttributeInit}
\name{pangoAttributeInit}
\title{pangoAttributeInit}
\description{Initializes \code{attr}'s klass to \code{klass},
it's start_index to \code{PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING}
and end_index to \code{PANGO_ATTR_INDEX_TO_TEXT_END}
such that the attribute applies
to the entire text by default.}
\usage{pangoAttributeInit(attr, klass)}
\arguments{
\item{\verb{attr}}{[\code{\link{PangoAttribute}}]  a \code{\link{PangoAttribute}}}
\item{\verb{klass}}{[\code{\link{PangoAttrClass}}]  a \verb{PangoAttributeClass}}
}
\details{  Since 1.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
