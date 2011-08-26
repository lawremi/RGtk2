\alias{gtkRadioActionGetGroup}
\name{gtkRadioActionGetGroup}
\title{gtkRadioActionGetGroup}
\description{Returns the list representing the radio group for this object.
Note that the returned list is only valid until the next change
to the group. }
\usage{gtkRadioActionGetGroup(object)}
\arguments{\item{\verb{object}}{the action object}}
\details{A common way to set up a group of radio group is the following:
\preformatted{
while (more_actions) {
  action <- gtkRadioAction(...)
  
  action$setGroup(group)
  group <- action$getGroup()
}
}
  Since 2.4}
\value{[list] the list representing the radio group for this object. \emph{[  \acronym{element-type}   GtkAction][  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
