\alias{atkActionGetName}
\name{atkActionGetName}
\title{atkActionGetName}
\description{Returns a non-localized string naming the specified action of the 
object. This name is generally not descriptive of the end result 
of the action, but instead names the 'interaction type' which the 
object supports. By convention, the above strings should be used to 
represent the actions which correspond to the common point-and-click 
interaction techniques of the same name: i.e. 
"click", "press", "release", "drag", "drop", "popup", etc.
The "popup" action should be used to pop up a context menu for the 
object, if one exists.}
\usage{atkActionGetName(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\verb{i}}{[integer]  the action index corresponding to the action to be performed }
}
\details{For technical reasons, some toolkits cannot guarantee that the 
reported action is actually 'bound' to a nontrivial user event;
i.e. the result of some actions via \code{\link{atkActionDoAction}} may be
NIL.  }
\value{[character] a name string, or \code{NULL}
if \code{action} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
