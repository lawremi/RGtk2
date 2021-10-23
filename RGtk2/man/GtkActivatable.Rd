\alias{GtkActivatable}
\name{GtkActivatable}
\title{GtkActivatable}
\description{An interface for activatable widgets}
\section{Methods and Functions}{
\code{\link{gtkActivatableDoSetRelatedAction}(object, action)}\cr
\code{\link{gtkActivatableGetRelatedAction}(object)}\cr
\code{\link{gtkActivatableGetUseActionAppearance}(object)}\cr
\code{\link{gtkActivatableSyncActionProperties}(object, action = NULL)}\cr
\code{\link{gtkActivatableSetRelatedAction}(object, action)}\cr
\code{\link{gtkActivatableSetUseActionAppearance}(object, use.appearance)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkActivatable}}
\section{Implementations}{GtkActivatable is implemented by
 \code{\link{GtkButton}},  \code{\link{GtkCheckButton}},  \code{\link{GtkCheckMenuItem}},  \code{\link{GtkColorButton}},  \code{\link{GtkFontButton}},  \code{\link{GtkImageMenuItem}},  \code{\link{GtkLinkButton}},  \code{\link{GtkMenuItem}},  \code{\link{GtkMenuToolButton}},  \code{\link{GtkOptionMenu}},  \code{\link{GtkRadioButton}},  \code{\link{GtkRadioMenuItem}},  \code{\link{GtkRadioToolButton}},  \code{\link{GtkRecentChooserMenu}},  \code{\link{GtkScaleButton}},  \code{\link{GtkSeparatorMenuItem}},  \code{\link{GtkSeparatorToolItem}},  \code{\link{GtkTearoffMenuItem}},  \code{\link{GtkToggleButton}},  \code{\link{GtkToggleToolButton}},  \code{\link{GtkToolButton}},  \code{\link{GtkToolItem}} and  \code{\link{GtkVolumeButton}}.}
\section{Detailed Description}{Activatable widgets can be connected to a \code{\link{GtkAction}} and reflects
the state of its action. A \code{\link{GtkActivatable}} can also provide feedback
through its action, as they are responsible for activating their
related actions.
  
 \emph{Implementing GtkActivatable}
When extending a class that is already \code{\link{GtkActivatable}}; it is only
necessary to implement the \code{\link{GtkActivatable}}->\code{syncActionProperties()}
and \code{\link{GtkActivatable}}->\code{update()} methods and chain up to the parent
implementation, however when introducing
a new \code{\link{GtkActivatable}} class; the \verb{"related-action"} and
\verb{"use-action-appearance"} properties need to be handled by
the implementor. Handling these properties is mostly a matter of installing
the action pointer and boolean flag on your instance, and calling
\code{\link{gtkActivatableDoSetRelatedAction}} and
\code{\link{gtkActivatableSyncActionProperties}} at the appropriate times.

 \emph{A class fragment implementing   \code{\link{GtkActivatable}}}
\preformatted{
gClass("FooBar", "GtkButton",
       .prop_overrides=c("related-action", "use-action-appearance"),
       GObject=list(
         dispose=function(object) {
           object$doSetRelatedAction(NULL)
         },
         set_property=function(object, id, value, pspec) {
           if (pspec$name == "related-action") {
             assignProp(object, pspec, value)
             object$doSetRelatedAction(value)
           } else if (pspec$name == "use-action-appearance") {
             if (value != getProp(pspec)) {
               assignProp(object, pspec, value)
               object$syncActionProperties(object$"related-action")
             }
           } else {
             warning("invalid property: ", pspec$name)
           }
         }
       ),
       GtkActivatable=list(
         sync_action_properties=function(activatable, action) {
           if (is.null(action)) {
             return()
           }
           activatable$visible <- action$visible
           activatable$sensitive <- action$sensitive
           ## ...
           if (activatable$use_action_appearance) {
             if (!is.null(action$stock_id)) {
               activatable$label <- action$stock_id
             } else {
               activatable$label <- action$label
             }
             activatable$use_stock <- !is.null(action$stock_id)
           }
           ## ...
         },
         update=function(activatable, action, property_name) {
           if (property_name == "visible") {
             activatable$visible <- action$visible
           } else if (property_name == "sensitive") {
             activatable$sensitive <- action$sensitive
           }
           ## ...
           if (activatable$use_action_appearance) {
             if (property_name == "stock-id") {
               activatable$label <- action$stock_id
               activatable$use_stock <- !is.null(action$stock_id)
             } else if (property_name == "label") {
               activatable$label <- action$label
             }
           }
           ## ...
         }
       ))
}}
\section{Structures}{\describe{\item{\verb{GtkActivatable}}{
\emph{undocumented
}

}}}
\section{Properties}{\describe{
\item{\verb{related-action} [\code{\link{GtkAction}} : *            : Read / Write]}{

The action that this activatable will activate and receive
updates from for various states and possibly appearance.
  \strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle the this property and
call \code{\link{gtkActivatableDoSetRelatedAction}} when it changes.  Since 2.16

}
\item{\verb{use-action-appearance} [logical : Read / Write]}{

Whether this activatable should reset its layout
and appearance when setting the related action or when
the action changes appearance.
  
See the \code{\link{GtkAction}} documentation directly to find which properties
should be ignored by the \code{\link{GtkActivatable}} when this property is \code{FALSE}.
  \strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle this property
and call \code{\link{gtkActivatableSyncActionProperties}} on the activatable
widget when it changes.  Default value: TRUE  Since 2.16

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkActivatable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
