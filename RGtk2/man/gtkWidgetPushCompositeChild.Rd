\alias{gtkWidgetPushCompositeChild}
\name{gtkWidgetPushCompositeChild}
\title{gtkWidgetPushCompositeChild}
\description{Makes all newly-created widgets as composite children until
the corresponding \code{\link{gtkWidgetPopCompositeChild}} call.}
\usage{gtkWidgetPushCompositeChild()}
\details{A composite child is a child that's an implementation detail of the
container it's inside and should not be visible to people using the
container. Composite children aren't treated differently by GTK (but
see \code{\link{gtkContainerForeach}} vs. \code{\link{gtkContainerForall}}), but e.g. GUI 
builders might want to treat them in a different way.
  
Here is a simple example:
\preformatted{
gtkWidgetPushCompositeChild()
hscrollbar <- gtkHScrollbarNew(hadjustment)
hscrollbar$setCompositeName("hscrollbar")
gtkWidgetPopCompositeChild()
hscrollbar$setParent(scrolled_window)
}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
