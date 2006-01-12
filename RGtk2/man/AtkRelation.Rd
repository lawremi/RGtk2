\alias{AtkRelation}
\alias{atkRelation}
\alias{AtkRelationType}
\name{AtkRelation}
\title{AtkRelation}
\description{An object used to describe a relation between a object and one or more
other objects.}
\usage{
\link{atkRelationTypeRegister}(name)
\link{atkRelationTypeGetName}(type)
\link{atkRelationTypeForName}(name)
\link{atkRelationNew}(targets, relationship)
\link{atkRelationGetRelationType}(object)
\link{atkRelationGetTarget}(object)
\link{atkRelationAddTarget}(object, target)
atkRelation(targets, relationship)
}
\details{An AtkRelation describes a relation between an object and one or more
other objects. The actual relations that an object has with other objects
are defined as an AtkRelationSet, which is a set of AtkRelations.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkRelation}}
\section{Structures}{\describe{\item{\code{AtkRelation}}{
The AtkRelation structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkRelation} is the equivalent of \code{\link{atkRelationNew}}.}
\section{Enums and Flags}{\describe{\item{\code{enum AtkRelationType}}{
Describes the type of the relation  

\describe{
\item{\code{ATK_RELATION_NULL (null)}}{\emph{undocumented
}}
\item{\code{ATK_RELATION_CONTROLLED_BY (controlled-by)}}{ Indicates an object controlled by one or more target objects.}
\item{\code{ATK_RELATION_CONTROLLER_FOR (controller-for)}}{ Indicates an object is an controller for one or more target objects.}
\item{\code{ATK_RELATION_LABEL_FOR (label-for)}}{ Indicates an object is a label for one or more target objects.}
\item{\code{ATK_RELATION_LABELLED_BY (labelled-by)}}{ Indicates an object is labelled by one or more target objects.}
\item{\code{ATK_RELATION_MEMBER_OF (member-of)}}{ Indicates an object is a member of a group of one or more target objects.}
\item{\code{ATK_RELATION_NODE_CHILD_OF (node-child-of)}}{ Indicates an object is a cell in a treetable which is displayed because a cell in the same column is expanded and identifies that cell.}
\item{\code{ATK_RELATION_FLOWS_TO (flows-to)}}{ Indicates that the object has content that flows logically to another
 AtkObject in a sequential way, (for instance text-flow).}
\item{\code{ATK_RELATION_FLOWS_FROM (flows-from)}}{ Indicates that the object has content that flows logically from
 another AtkObject in a sequential way, (for instance text-flow).}
\item{\code{ATK_RELATION_SUBWINDOW_OF (subwindow-of)}}{ Indicates a subwindow attached to a component but otherwise has no connection in  the UI heirarchy to that component.}
\item{\code{ATK_RELATION_EMBEDS (embeds)}}{ Indicates that the object visually embeds 
 another object's content, i.e. this object's content flows around 
 another's content.}
\item{\code{ATK_RELATION_EMBEDDED_BY (embedded-by)}}{ Inverse of \code{ATK_RELATION_EMBEDS}, indicates that
 this object's content is visualy embedded in another object.}
\item{\code{ATK_RELATION_POPUP_FOR (popup-for)}}{ Indicates that an object is a popup for another object.}
\item{\code{ATK_RELATION_PARENT_WINDOW_OF (parent-window-of)}}{ Indicates that an object is a parent window of another object.}
\item{\code{ATK_RELATION_LAST_DEFINED (last-defined)}}{\emph{undocumented
}}
}

}}}
\section{Properties}{\describe{
\item{\code{relation-type} [\code{\link{AtkRelationType}} : Read / Write]}{

The type of the relation.  Default value: ATK_RELATION_NULL

}
\item{\code{target} [GValueArray : Read / Write]}{

An list of the targets for the relation.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkRelation.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
