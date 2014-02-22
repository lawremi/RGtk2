\alias{pangoItemize}
\name{pangoItemize}
\title{pangoItemize}
\description{Breaks a piece of text into segments with consistent
directional level and shaping engine. Each byte of \code{text} will
be contained in exactly one of the items in the returned list;
the generated list of items will be in logical order (the start
offsets of the items are ascending).}
\usage{pangoItemize(context, text, start.index, length, attrs, cached.iter = NULL)}
\arguments{
\item{\verb{context}}{[\code{\link{PangoContext}}]    a structure holding information that affects
	       the itemization process.}
\item{\verb{text}}{[char]       the text to itemize.}
\item{\verb{start.index}}{[integer]  first byte in \code{text} to process}
\item{\verb{length}}{[integer]     the number of bytes (not characters) to process
            after \code{start.index}.
            This must be >= 0.}
\item{\verb{attrs}}{[\code{\link{PangoAttrList}}]      the set of attributes that apply to \code{text}.}
\item{\verb{cached.iter}}{[\code{\link{PangoAttrIterator}}]       Cached attribute iterator, or \code{NULL}}
}
\details{\code{cached.iter} should be an iterator over \code{attrs} currently positioned at a
range before or containing \code{start.index}; \code{cached.iter} will be advanced to
the range covering the position just after \code{start.index} + \code{length}.
(i.e. if itemizing in a loop, just keep passing in the same \code{cached.iter}).  }
\value{[list]  a \verb{list} of \code{\link{PangoItem}} structures.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
