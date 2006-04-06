\alias{pangoFontDescriptionFromString}
\name{pangoFontDescriptionFromString}
\title{pangoFontDescriptionFromString}
\description{Creates a new font description from a string representation in the
form "[FAMILY-LIST] [STYLE-OPTIONS] [SIZE]", where FAMILY-LIST is a
comma separated list of families optionally terminated by a comma,
STYLE\_OPTIONS is a whitespace separated list of words where each
WORD describes one of style, variant, weight, or stretch, and SIZE
is an decimal number (size in points). Any one of the options may
be absent.  If FAMILY-LIST is absent, then the family\_name field of
the resulting font description will be initialized to \code{NULL}.  If
STYLE-OPTIONS is missing, then all style options will be set to the
default values. If SIZE is missing, the size in the resulting font
description will be set to 0.}
\usage{pangoFontDescriptionFromString(str)}
\arguments{\item{\code{str}}{[char]  string representation of a font description.}}
\value{[\code{\link{PangoFontDescription}}]  a new \code{\link{PangoFontDescription}}. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
