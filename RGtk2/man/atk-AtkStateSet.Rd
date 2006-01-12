\alias{atk-AtkStateSet}
\name{atk-AtkStateSet}
\title{AtkStateSet}
\description{An AtkStateSet determines a component's state set.}
\usage{
\link{atkStateSetNew}()
\link{atkStateSetIsEmpty}(object)
\link{atkStateSetAddState}(object, type)
\link{atkStateSetAddStates}(object, types)
\link{atkStateSetClearStates}(object)
\link{atkStateSetContainsState}(object, type)
\link{atkStateSetContainsStates}(object, types, n.types)
\link{atkStateSetRemoveState}(object, type)
\link{atkStateSetAndSets}(object, compare.set)
\link{atkStateSetOrSets}(object, compare.set)
\link{atkStateSetXorSets}(object, compare.set)
}
\details{An AtkStateSet determines a component's state set. It is composed of a set 
of AtkStates.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/atk-AtkStateSet.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
