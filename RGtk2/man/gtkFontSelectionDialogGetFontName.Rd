\alias{gtkFontSelectionDialogGetFontName}
\name{gtkFontSelectionDialogGetFontName}
\title{gtkFontSelectionDialogGetFontName}
\description{Gets the currently-selected font name.}
\usage{gtkFontSelectionDialogGetFontName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFontSelectionDialog}}}}
\details{Note that this can be a different string than what you set with 
\code{\link{gtkFontSelectionDialogSetFontName}}, as the font selection widget
may normalize font names and thus return a string with a different 
structure. For example, "Helvetica Italic Bold 12" could be normalized 
to "Helvetica Bold Italic 12".  Use \code{\link{pangoFontDescriptionEqual}}
if you want to compare two font descriptions.}
\value{[character] A string with the name of the current font, or \code{NULL} if no
font is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
