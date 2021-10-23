\alias{GtkActionGroup}
\alias{GtkActionEntry}
\alias{GtkToggleActionEntry}
\alias{GtkRadioActionEntry}
\alias{gtkActionGroup}
\name{GtkActionGroup}
\title{GtkActionGroup}
\description{A group of actions}
\section{Methods and Functions}{
\code{\link{gtkActionGroupNew}(name = NULL)}\cr
\code{\link{gtkActionGroupGetName}(object)}\cr
\code{\link{gtkActionGroupGetSensitive}(object)}\cr
\code{\link{gtkActionGroupSetSensitive}(object, sensitive)}\cr
\code{\link{gtkActionGroupGetVisible}(object)}\cr
\code{\link{gtkActionGroupSetVisible}(object, visible)}\cr
\code{\link{gtkActionGroupGetAction}(object, action.name)}\cr
\code{\link{gtkActionGroupListActions}(object)}\cr
\code{\link{gtkActionGroupAddAction}(object, action)}\cr
\code{\link{gtkActionGroupAddActionWithAccel}(object, action, accelerator = NULL)}\cr
\code{\link{gtkActionGroupRemoveAction}(object, action)}\cr
\code{\link{gtkActionGroupAddActions}(object, entries, user.data = NULL)}\cr
\code{\link{gtkActionGroupAddActionsFull}(object, entries, user.data = NULL)}\cr
\code{\link{gtkActionGroupAddToggleActions}(object, entries, user.data = NULL)}\cr
\code{\link{gtkActionGroupAddToggleActionsFull}(object, entries, user.data = NULL)}\cr
\code{\link{gtkActionGroupAddRadioActions}(object, entries, value, on.change = NULL, user.data = NULL)}\cr
\code{\link{gtkActionGroupAddRadioActionsFull}(object, entries, value, on.change = NULL, user.data = NULL)}\cr
\code{\link{gtkActionGroupSetTranslateFunc}(object, func, data = NULL)}\cr
\code{\link{gtkActionGroupSetTranslationDomain}(object, domain)}\cr
\code{\link{gtkActionGroupTranslateString}(object, string)}\cr
\code{gtkActionGroup(name = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkActionGroup}}
\section{Interfaces}{GtkActionGroup implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{Actions are organised into groups.  An action group is essentially a
map from names to \code{\link{GtkAction}} objects.
  
All actions that would make sense to use in a particular context
should be in a single group.  Multiple action groups may be used for a
particular user interface.  In fact, it is expected that most nontrivial
applications will make use of multiple groups.  For example, in an application
that can edit multiple documents, one group holding global actions
(e.g. quit, about, new), and one group per document holding actions that
act on that document (eg. save, cut/copy/paste, etc).  Each window's menus
would be constructed from a combination of two action groups.
  
Accelerators are handled by the GTK+ accelerator map. All actions are assigned an
accelerator path (which normally has the form
\code{<Actions>/  \\var{group-name}  /  \\var{action-name}})
and a shortcut is associated with this accelerator path. All menuitems and
toolitems take on this accelerator path. The GTK+ accelerator map code makes
sure that the correct shortcut is displayed next to the menu item.}
\section{GtkActionGroup as GtkBuildable}{The GtkActionGroup implementation of the GtkBuildable interface accepts
GtkAction objects as <child> elements in UI definitions.
  
Note that it is probably more common to define actions and action groups
in the code, since they are directly related to what the code can do.
  
The GtkActionGroup implementation of the GtkBuildable interface supports a
custom <accelerator> element, which has attributes named key and
modifiers and allows to specify accelerators. This is similar to the
<accelerator> element of GtkWidget, the main difference is that
it doesn't allow you to specify a signal.
  
 \emph{A   \code{GtkDialog}   UI definition fragment.}\preformatted{<object class="GtkActionGroup" id="actiongroup">
  <child>
      <object class="GtkAction" id="About">
          <property name="name">About</property>
          <property name="stock_id">gtk-about</property>
          <signal handler="about_activate" name="activate"/>
      </object>
      <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
  </child>
</object>
}}
\section{Structures}{\describe{
\item{\verb{GtkActionGroup}}{
The \code{GtkActionGroup} struct contains only private
members and should not be accessed directly.

}
\item{\verb{GtkActionEntry}}{
\code{GtkActionEntry} structs are used with
\code{\link{gtkActionGroupAddActions}} to construct actions.
\strong{\verb{GtkActionEntry} is a \link{transparent-type}.}

\describe{
\item{\code{name}}{The name of the action.}
\item{\code{stock_id}}{The stock id for the action, or the name of an icon from the icon
theme.}
\item{\code{label}}{The label for the action. This field should typically be marked for
translation, see \code{\link{gtkActionGroupSetTranslationDomain}}. If \code{label}
is \code{NULL}, the label of the stock item with id \code{stock.id} is used.}
\item{\code{accelerator}}{The accelerator for the action, in the format understood by
\code{\link{gtkAcceleratorParse}}.}
\item{\code{tooltip}}{The tooltip for the action. This field should typically be marked
for translation, see \code{\link{gtkActionGroupSetTranslationDomain}}.}
\item{\code{callback}}{The function to call when the action is activated.}
}

}
\item{\verb{GtkToggleActionEntry}}{
\code{GtkToggleActionEntry} structs are used with
\code{\link{gtkActionGroupAddToggleActions}} to construct toggle actions.
\strong{\verb{GtkToggleActionEntry} is a \link{transparent-type}.}

\describe{
\item{\code{name}}{The name of the action.}
\item{\code{stock_id}}{The stock id for the action, or the name of an icon from the icon
theme.}
\item{\code{label}}{The label for the action. This field should typically be marked for
translation, see \code{\link{gtkActionGroupSetTranslationDomain}}.}
\item{\code{accelerator}}{The accelerator for the action, in the format understood by
\code{\link{gtkAcceleratorParse}}.}
\item{\code{tooltip}}{The tooltip for the action. This field should typically be marked
for translation, see \code{\link{gtkActionGroupSetTranslationDomain}}.}
\item{\code{callback}}{The function to call when the action is activated.}
\item{\code{is_active}}{The initial state of the toggle action.}
}

}
\item{\verb{GtkRadioActionEntry}}{
\code{GtkRadioActionEntry} structs are used with
\code{\link{gtkActionGroupAddRadioActions}} to construct groups of radio actions.
\strong{\verb{GtkRadioActionEntry} is a \link{transparent-type}.}

\describe{
\item{\code{name}}{The name of the action.}
\item{\code{stock_id}}{The stock id for the action, or the name of an icon from the icon
theme.}
\item{\code{label}}{The label for the action. This field should typically be marked for
translation, see \code{\link{gtkActionGroupSetTranslationDomain}}.}
\item{\code{accelerator}}{The accelerator for the action, in the format understood by
\code{\link{gtkAcceleratorParse}}.}
\item{\code{tooltip}}{The tooltip for the action. This field should typically be marked for
translation, see \code{\link{gtkActionGroupSetTranslationDomain}}.}
\item{\code{value}}{The value to set on the radio action. See \code{\link{gtkRadioActionGetCurrentValue}}.}
}

}
}}
\section{Convenient Construction}{\code{gtkActionGroup} is the equivalent of \code{\link{gtkActionGroupNew}}.}
\section{Signals}{\describe{
\item{\code{connect-proxy(action.group, action, proxy, user.data)}}{
The ::connect-proxy signal is emitted after connecting a proxy to
an action in the group. Note that the proxy may have been connected
to a different action before.
  
This is intended for simple customizations for which a custom action
class would be too clumsy, e.g. showing tooltips for menuitems in the
statusbar.
  \code{\link{GtkUIManager}} proxies the signal and provides global notification
just before any action is connected to a proxy, which is probably more
convenient to use.
  Since 2.4

\describe{
\item{\code{action.group}}{the group}
\item{\code{action}}{the action}
\item{\code{proxy}}{the proxy}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{disconnect-proxy(action.group, action, proxy, user.data)}}{
The ::disconnect-proxy signal is emitted after disconnecting a proxy
from an action in the group.
  \code{\link{GtkUIManager}} proxies the signal and provides global notification
just before any action is connected to a proxy, which is probably more
convenient to use.
  Since 2.4

\describe{
\item{\code{action.group}}{the group}
\item{\code{action}}{the action}
\item{\code{proxy}}{the proxy}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{post-activate(action.group, action, user.data)}}{
The ::post-activate signal is emitted just after the \code{action} in the
\code{action.group} is activated
  
This is intended for \code{\link{GtkUIManager}} to proxy the signal and provide global
notification just after any action is activated.
  Since 2.4

\describe{
\item{\code{action.group}}{the group}
\item{\code{action}}{the action}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{pre-activate(action.group, action, user.data)}}{
The ::pre-activate signal is emitted just before the \code{action} in the
\code{action.group} is activated
  
This is intended for \code{\link{GtkUIManager}} to proxy the signal and provide global
notification just before any action is activated.
  Since 2.4

\describe{
\item{\code{action.group}}{the group}
\item{\code{action}}{the action}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{name} [character : *                : Read / Write / Construct Only]}{

A name for the action group.  Default value: NULL

}
\item{\verb{sensitive} [logical : Read / Write]}{

Whether the action group is enabled.  Default value: TRUE

}
\item{\verb{visible} [logical : Read / Write]}{

Whether the action group is visible.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkActionGroup.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
