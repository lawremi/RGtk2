\alias{pangoCairoCreateLayout}
\name{pangoCairoCreateLayout}
\title{pangoCairoCreateLayout}
\description{Creates a layout object set up to match the current transformation
and target surface of the Cairo context.  This layout can then be
used for text measurement with functions like
\code{\link{pangoLayoutGetSize}} or drawing with functions like
\code{\link{pangoCairoShowLayout}}. If you change the transformation
or target surface for \code{cr}, you need to call \code{\link{pangoCairoUpdateLayout}}}
\usage{pangoCairoCreateLayout(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}}
\details{This function is the most convenient way to use Cairo with Pango,
however it is slightly inefficient since it creates a separate
\code{\link{PangoContext}} object for each layout. This might matter in an
application that was laying out large amounts of text.  
  Since 1.10}
\value{[\code{\link{PangoLayout}}]  the newly created \code{\link{PangoLayout}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
