\alias{ATK}
\name{ATK}
\title{ATK}
\description{ATK is the Accessibility Toolkit. It provides a set of generic interfaces allowing accessibility technologies to interact with a graphical user interface. For example, a screen reader uses ATK to discover the text in an interface and read it to blind users. GTK+ widgets have built-in support for accessibility using the ATK framework.}
\details{
The RGtk binding to the ATK library consists of the following components:
\describe{
\item{\link{AtkAction}}{The ATK interface provided by UI components which the user can
activate/interact with,}
\item{\link{AtkComponent}}{The ATK interface provided by UI components which occupy a physical area on
the screen.}
\item{\link{AtkDocument}}{The ATK interface which represents the toplevel container for document content.}
\item{\link{AtkEditableText}}{The ATK interface implemented by components containing user-editable text content.}
\item{\link{AtkGObjectAccessible}}{This object class is derived from AtkObject and can be used as a basis
implementing accessible objects.}
\item{\link{AtkHyperlink}}{An ATK object which encapsulates a link or set of links in a hypertext document.}
\item{\link{AtkHypertext}}{The ATK interface which provides standard mechanism for manipulating hyperlinks.}
\item{\link{AtkImage}}{The ATK Interface implemented by components which expose image or pixmap
content on-screen.}
\item{\link{atk-AtkMisc}}{\emph{undocumented
}}
\item{\link{AtkNoOpObject}}{An AtkObject which purports to implement all ATK interfaces.}
\item{\link{AtkNoOpObjectFactory}}{The AtkObjectFactory which creates an AtkNoOpObject.}
\item{\link{AtkObject}}{The base object class for the Accessibility Toolkit API.}
\item{\link{AtkObjectFactory}}{The base object class for a factory used to create accessible objects for
objects of a specific GType.}
\item{\link{AtkRegistry}}{An object used to store the GType of the factories used to create an accessible
object for an object of a particular GType.}
\item{\link{AtkRelation}}{An object used to describe a relation between a object and one or more
other objects.}
\item{\link{AtkRelationSet}}{A set of AtkRelations, normally the set of AtkRelations which an AtkObject has.}
\item{\link{AtkSelection}}{The ATK interface implemented by container objects whose    children
can be selected.}
\item{\link{atk-AtkState}}{An AtkState describes a component's particular state.}
\item{\link{AtkStateSet}}{An AtkStateSet determines a component's state set.}
\item{\link{AtkStreamableContent}}{The ATK interface which provides access to streamable content.}
\item{\link{AtkTable}}{The ATK interface implemented for UI components which contain tabular or
row/column information.}
\item{\link{AtkText}}{The ATK interface implemented by components with text content.}
\item{\link{AtkUtil}}{A set of ATK utility functions for event and toolkit support.}
\item{\link{AtkValue}}{The ATK interface implemented by valuators and components which display or
select a value from a bounded range of values.}
}
}
\references{\url{https://developer-old.gnome.org/atk/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{interface}
