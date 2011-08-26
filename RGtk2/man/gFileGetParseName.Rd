\alias{gFileGetParseName}
\name{gFileGetParseName}
\title{gFileGetParseName}
\description{Gets the parse name of the \code{file}.
A parse name is a UTF-8 string that describes the
file such that one can get the \code{\link{GFile}} back using
\code{\link{gFileParseName}}.}
\usage{gFileGetParseName(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{This is generally used to show the \code{\link{GFile}} as a nice
full-pathname kind of string in a user interface,
like in a location entry.
  
For local files with names that can safely be converted
to UTF8 the pathname is used, otherwise the IRI is used
(a form of URI that allows UTF8 characters unescaped).
  
This call does no blocking i/o.}
\value{[char] a string containing the \code{\link{GFile}}'s parse name.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
