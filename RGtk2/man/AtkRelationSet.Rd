\alias{AtkRelationSet}
\alias{atkRelationSet}
\name{AtkRelationSet}
\title{AtkRelationSet}
\description{A set of AtkRelations, normally the set of AtkRelations which an AtkObject has.}
\usage{
\link{atkRelationSetNew}()
\link{atkRelationSetContains}(object, relationship)
\link{atkRelationSetRemove}(object, relation)
\link{atkRelationSetAdd}(object, relation)
\link{atkRelationSetGetNRelations}(object)
\link{atkRelationSetGetRelation}(object, i)
\link{atkRelationSetGetRelationByType}(object, relationship)
\link{atkRelationSetAddRelationByType}(object, relationship, target)
atkRelationSet()
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
