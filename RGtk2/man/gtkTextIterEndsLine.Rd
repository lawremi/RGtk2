\alias{gtkTextIterEndsLine}
\name{gtkTextIterEndsLine}
\title{gtkTextIterEndsLine}
\description{Returns \code{TRUE} if \code{iter} points to the start of the paragraph
delimiter characters for a line (delimiters will be either a
newline, a carriage return, a carriage return followed by a
newline, or a Unicode paragraph separator character). Note that an
iterator pointing to the \\n of a \\r\\n pair will not be counted as
the end of a line, the line ends before the \\r. The end iterator is
considered to be at the end of a line, even though there are no
paragraph delimiter chars there.}
\usage{gtkTextIterEndsLine(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether \code{iter} is at the end of a line}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
