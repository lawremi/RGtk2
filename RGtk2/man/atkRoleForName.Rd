\alias{atkRoleForName}
\name{atkRoleForName}
\title{atkRoleForName}
\description{Get the \code{\link{AtkRole}} type corresponding to a rolew name.}
\usage{atkRoleForName(name)}
\arguments{\item{\verb{name}}{[character]  a string which is the (non-localized) name of an ATK role.}}
\value{[\code{\link{AtkRole}}]  the \code{\link{AtkRole}} enumerated type corresponding to the specified
name,
         or \verb{ATK_ROLE_INVALID} if no matching role is found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
