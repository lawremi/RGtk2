\alias{gFileAttributeMatcherNew}
\name{gFileAttributeMatcherNew}
\title{gFileAttributeMatcherNew}
\description{Creates a new file attribute matcher, which matches attributes 
against a given string. \code{\link{GFileAttributeMatcher}}s are reference 
counted structures, and are created with a reference count of 1. If 
the number of references falls to 0, the \code{\link{GFileAttributeMatcher}} is 
automatically destroyed.}
\usage{gFileAttributeMatcherNew(attributes)}
\arguments{\item{\verb{attributes}}{an attribute string to match.}}
\details{The \code{attribute} string should be formatted with specific keys separated
from namespaces with a double colon. Several "namespace::key" strings may be 
concatenated with a single comma (e.g. "standard::type,standard::is-hidden"). 
The wildcard "*" may be used to match all keys and namespaces, or 
"namespace::*" will match all keys in a given namespace. 
  
Examples of strings to use:
\tabular{ll}{
"*" \tab matches all attributes. \cr
"standard::is-hidden" \tab matches only the key is-hidden in the standard namespace. \cr
"standard::type,unix::*" \tab matches the type key in the standard namespace and
all keys in the unix namespace. \cr
}}
\value{[\code{\link{GFileAttributeMatcher}}] a \code{\link{GFileAttributeMatcher}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
