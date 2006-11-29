\alias{AtkRelation}
\alias{atkRelation}
\alias{AtkRelationType}
\name{AtkRelation}
\title{AtkRelation}
\description{An object used to describe a relation between a object and one or more
other objects.}
\section{Methods and Functions}{
\code{\link{atkRelationTypeRegister}(name)}\cr
\code{\link{atkRelationTypeGetName}(type)}\cr
\code{\link{atkRelationTypeForName}(name)}\cr
\code{\link{atkRelationNew}(targets, relationship)}\cr
\code{\link{atkRelationGetRelationType}(object)}\cr
\code{\link{atkRelationGetTarget}(object)}\cr
\code{\link{atkRelationAddTarget}(object, target)}\cr
\code{atkRelation(targets, relationship)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkRelation}}
\section{Detailed Description}{An AtkRelation describes a relation between an object and one or more
other objects. The actual relations that an object has with other objects
are defined as an AtkRelationSet, which is a set of AtkRelations.}
\section{Structures}{\describe{\item{\code{AtkRelation}}{
The AtkRelation structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkRelation} is the equivalent of \code{\link{atkRelationNew}}.}
\section{Enums and Flags}{\describe{\item{\code{AtkRelationType}}{
Describes the type of the relation  

\describe{
\item{\code{null}}{ Not used, represens "no relationship" or an error condition.}
\item{\code{controlled-by}}{ Indicates an object controlled by one or more target objects.}
\item{\code{controller-for}}{ Indicates an object is an controller for one or more target objects.}
\item{\code{label-for}}{ Indicates an object is a label for one or more target objects.}
\item{\code{labelled-by}}{ Indicates an object is labelled by one or more target objects.}
\item{\code{member-of}}{ Indicates an object is a member of a group of one or more target objects.}
\item{\code{node-child-of}}{ Indicates an object is a cell in a treetable which is displayed because a cell in the same column is expanded and identifies that cell.}
\item{\code{flows-to}}{ Indicates that the object has content that flows logically to another
 AtkObject in a sequential way, (for instance text-flow).}
\item{\code{flows-from}}{ Indicates that the object has content that flows logically from
 another AtkObject in a sequential way, (for instance text-flow).}
\item{\code{subwindow-of}}{ Indicates a subwindow attached to a component but otherwise has no connection in  the UI heirarchy to that component.}
\item{\code{embeds}}{ Indicates that the object visually embeds 
 another object's content, i.e. this object's content flows around 
 another's content.}
\item{\code{embedded-by}}{ Inverse of \code{ATK_RELATION_EMBEDS}, indicates that
 this object's content is visualy embedded in another object.}
\item{\code{popup-for}}{ Indicates that an object is a popup for another object.}
\item{\code{parent-window-of}}{ Indicates that an object is a parent window of another object.}
\item{\code{description-for}}{ Indicates that another object provides descriptive information about this object; more verbose than ATK\_RELATION\_LABELLED\_BY.}
\item{\code{described-by}}{ Indicates that an object provides descriptive information about another object; more verbose than ATK\_RELATION\_LABEL\_FOR.}
\item{\code{last-defined}}{ Not used, this value indicates the end of the enumeration.}
}

}}}
\section{Properties}{\describe{
\item{\code{relation-type} [\code{\link{AtkRelationType}} : Read / Write]}{

The type of the relation.  Default value: ATK\_RELATION\_NULL

}
\item{\code{target} [GValueArray : Read / Write]}{

An list of the targets for the relation.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkRelation.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
