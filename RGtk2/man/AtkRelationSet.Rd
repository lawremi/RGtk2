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
\section{Hierarchy}{\preformatted{GObject
   +----AtkRelationSet}}
\section{Detailed Description}{The AtkRelationSet held by an object establishes its relationships with
objects beyond the normal "parent/child" hierarchical relationships that all
user interface objects have.  AtkRelationSets establish whether objects are
labelled or controlled by other components, share group membership with other
components (for instance within a radio-button group), or share content which
"flows" between them, among other types of possible relationships.}
\section{Structures}{\describe{\item{\verb{AtkRelationSet}}{
The AtkRelationSet structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkRelationSet} is the equivalent of \code{\link{atkRelationSetNew}}.}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkRelationSet.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
