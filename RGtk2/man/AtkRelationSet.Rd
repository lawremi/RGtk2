\alias{AtkRelationSet}
\alias{atkRelationSet}
\name{AtkRelationSet}
\title{AtkRelationSet}
\description{A set of AtkRelations, normally the set of AtkRelations which an AtkObject has.}
\section{Methods and Functions}{
\code{\link{atkRelationSetNew}()}\cr
\code{\link{atkRelationSetContains}(object, relationship)}\cr
\code{\link{atkRelationSetRemove}(object, relation)}\cr
\code{\link{atkRelationSetAdd}(object, relation)}\cr
\code{\link{atkRelationSetGetNRelations}(object)}\cr
\code{\link{atkRelationSetGetRelation}(object, i)}\cr
\code{\link{atkRelationSetGetRelationByType}(object, relationship)}\cr
\code{\link{atkRelationSetAddRelationByType}(object, relationship, target)}\cr
\code{atkRelationSet()}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkRelationSet}}
\section{Structures}{\describe{\item{\code{AtkRelationSet}}{
The AtkRelationSet structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkRelationSet} is the equivalent of \code{\link{atkRelationSetNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkRelationSet.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
