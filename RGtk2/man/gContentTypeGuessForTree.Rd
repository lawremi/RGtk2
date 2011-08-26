\alias{gContentTypeGuessForTree}
\name{gContentTypeGuessForTree}
\title{gContentTypeGuessForTree}
\description{Tries to guess the type of the tree with root \code{root}, by
looking at the files it contains. The result is a list
of content types, with the best guess coming first.}
\usage{gContentTypeGuessForTree(root)}
\arguments{\item{\verb{root}}{the root of the tree to guess a type for}}
\details{The types returned all have the form x-content/foo, e.g.
x-content/audio-cdda (for audio CDs) or x-content/image-dcf 
(for a camera memory card). See the shared-mime-info (\url{http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec})
specification for more on x-content types.
  
This function is useful in the implementation of \code{\link{gMountGuessContentType}}.
  Since 2.18}
\value{[char] a list of zero or more content types, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
