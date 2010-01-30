\alias{pangoFontDescriptionToFilename}
\name{pangoFontDescriptionToFilename}
\title{pangoFontDescriptionToFilename}
\description{Creates a filename representation of a font description. The
filename is identical to the result from calling
\code{\link{pangoFontDescriptionToString}}, but with underscores instead of
characters that are untypical in filenames, and in lower case only.}
\usage{pangoFontDescriptionToFilename(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}}
\value{[char] .}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
