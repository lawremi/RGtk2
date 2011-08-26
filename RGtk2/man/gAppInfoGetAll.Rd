\alias{gAppInfoGetAll}
\name{gAppInfoGetAll}
\title{gAppInfoGetAll}
\description{Gets a list of all of the applications currently registered 
on this system.}
\usage{gAppInfoGetAll()}
\details{For desktop files, this includes applications that have 
\code{NoDisplay=true} set or are excluded from 
display by means of \code{OnlyShowIn} or
\code{NotShowIn}. See \code{\link{gAppInfoShouldShow}}.
The returned list does not include applications which have
the \code{Hidden} key set.}
\value{[list] a newly allocated \verb{list} of references to \code{\link{GAppInfo}}s.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
