\alias{gtkWindowGetGroup}
\name{gtkWindowGetGroup}
\title{gtkWindowGetGroup}
\description{Returns the group for \code{window} or the default group, if
\code{window} is \code{NULL} or if \code{window} does not have an explicit
window group.}
\usage{gtkWindowGetGroup(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}}
\details{Since 2.10}
\value{[\code{\link{GtkWindowGroup}}] the \code{\link{GtkWindowGroup}} for a window or the default group. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
