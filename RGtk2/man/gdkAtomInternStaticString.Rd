\alias{gdkAtomInternStaticString}
\name{gdkAtomInternStaticString}
\title{gdkAtomInternStaticString}
\description{Finds or creates an atom corresponding to a given string.}
\usage{gdkAtomInternStaticString(atom.name)}
\arguments{\item{\verb{atom.name}}{a static string}}
\details{Note that this function is identical to \code{\link{gdkAtomIntern}} except
that if a new \code{\link{GdkAtom}} is created the string itself is used rather 
than a copy. This saves memory, but can only be used if the string 
will \emph{always} exist. It can be used with statically
allocated strings in the main program, but not with statically 
allocated memory in dynamically loaded modules, if you expect to
ever unload the module again (e.g. do not use this function in
GTK+ theme engines).
  Since 2.10}
\value{[\code{\link{GdkAtom}}] the atom corresponding to \code{atom.name}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
