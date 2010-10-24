\alias{gtkRadioButtonSetGroup}
\name{gtkRadioButtonSetGroup}
\title{gtkRadioButtonSetGroup}
\description{Sets a \code{\link{GtkRadioButton}}'s group. It should be noted that this does not change
the layout of your interface in any way, so if you are changing the group,
it is likely you will need to re-arrange the user interface to reflect these
changes.}
\usage{gtkRadioButtonSetGroup(object, group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRadioButton}}.}
\item{\verb{group}}{an existing radio button group, such as one returned from
\code{\link{gtkRadioButtonGetGroup}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
