\alias{pangoLanguageGetScripts}
\name{pangoLanguageGetScripts}
\title{pangoLanguageGetScripts}
\description{Determines the scripts used to to write \code{language}.
If nothing is known about the language tag \code{language},
or if \code{language} is \code{NULL}, then \code{NULL} is returned.
The list of scripts returned starts with the script that the
language uses most and continues to the one it uses least.}
\usage{pangoLanguageGetScripts(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLanguage}}]  a \code{\link{PangoLanguage}}, or \code{NULL}}}
\details{The value \code{num.script} points at will be set to the number
of scripts in the returned list (or zero if \code{NULL} is returned).
  
Most languages use only one script for writing, but there are
some that use two (Latin and Cyrillic for example), and a few
use three (Japanese for example).  Applications should not make
any assumptions on the maximum number of scripts returned
though, except that it is positive if the return value is not
\code{NULL}, and it is a small number.
  
The \code{\link{pangoLanguageIncludesScript}} function uses this function
internally.  
  Since 1.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{PangoScript}}]  An list of \code{\link{PangoScript}} values, with the
number of entries in the list stored in \code{num.scripts}, or
\code{NULL} if Pango does not have any information about this
particular language tag (also the case if \code{language} is \code{NULL}).
 }
\item{\verb{num.scripts}}{[integer]  location to return number of scripts, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
