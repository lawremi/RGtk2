\alias{GtkUIManager}
\alias{gtkUIManager}
\alias{GtkUIManagerItemType}
\name{GtkUIManager}
\title{GtkUIManager}
\description{Constructing menus and toolbars from an XML description}
\section{Methods and Functions}{
\code{\link{gtkUIManagerNew}()}\cr
\code{\link{gtkUIManagerSetAddTearoffs}(object, add.tearoffs)}\cr
\code{\link{gtkUIManagerGetAddTearoffs}(object)}\cr
\code{\link{gtkUIManagerInsertActionGroup}(object, action.group, pos)}\cr
\code{\link{gtkUIManagerRemoveActionGroup}(object, action.group)}\cr
\code{\link{gtkUIManagerGetActionGroups}(object)}\cr
\code{\link{gtkUIManagerGetAccelGroup}(object)}\cr
\code{\link{gtkUIManagerGetWidget}(object, path)}\cr
\code{\link{gtkUIManagerGetToplevels}(object, types)}\cr
\code{\link{gtkUIManagerGetAction}(object, path)}\cr
\code{\link{gtkUIManagerAddUiFromString}(object, buffer, length = -1, .errwarn = TRUE)}\cr
\code{\link{gtkUIManagerNewMergeId}(object)}\cr
\code{\link{gtkUIManagerAddUi}(object, merge.id, path, name, action = NULL, type, top)}\cr
\code{\link{gtkUIManagerRemoveUi}(object, merge.id)}\cr
\code{\link{gtkUIManagerGetUi}(object)}\cr
\code{\link{gtkUIManagerEnsureUpdate}(object)}\cr
\code{gtkUIManager()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkUIManager}}
\section{Interfaces}{GtkUIManager implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkUIManager}} constructs a user interface (menus and toolbars) from
one or more UI definitions, which reference actions from one or more
action groups.}
\section{UI Definitions}{The UI definitions are specified in an XML format which can be
roughly described by the following DTD.
  
Do not confuse the GtkUIManager UI Definitions described here with
the similarly named GtkBuilder UI
Definitions.
  \preformatted{<!ELEMENT ui          (menubar|toolbar|popup|accelerator)* >
<!ELEMENT menubar     (menuitem|separator|placeholder|menu)* >
<!ELEMENT menu        (menuitem|separator|placeholder|menu)* >
<!ELEMENT popup       (menuitem|separator|placeholder|menu)* >
<!ELEMENT toolbar     (toolitem|separator|placeholder)* >
<!ELEMENT placeholder (menuitem|toolitem|separator|placeholder|menu)* >
<!ELEMENT menuitem     EMPTY >
<!ELEMENT toolitem     (menu?) >
<!ELEMENT separator    EMPTY >
<!ELEMENT accelerator  EMPTY >
<!ATTLIST menubar      name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST toolbar      name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST popup        name                      #IMPLIED
                       action                    #IMPLIED
                       accelerators (true|false) #IMPLIED >
<!ATTLIST placeholder  name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST separator    name                      #IMPLIED
                       action                    #IMPLIED
                       expand       (true|false) #IMPLIED >
<!ATTLIST menu         name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED >
<!ATTLIST menuitem     name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED
                       always-show-image (true|false) #IMPLIED >
<!ATTLIST toolitem     name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED >
<!ATTLIST accelerator  name                      #IMPLIED
                       action                    #REQUIRED >
}
There are some additional restrictions beyond those specified in the
DTD, e.g. every toolitem must have a toolbar in its anchestry and
every menuitem must have a menubar or popup in its anchestry. Since
a \verb{GMarkup} parser is used to parse the UI description, it must not only
be valid XML, but valid \verb{GMarkup}.
  
If a name is not specified, it defaults to the action. If an action is
not specified either, the element name is used. The name and action
attributes must not contain '/' characters after parsing (since that
would mess up path lookup) and must be usable as XML attributes when
enclosed in doublequotes, thus they must not '"' characters or references
to the &quot; entity.
  
 \emph{A UI definition}\preformatted{<ui>
  <menubar>
    <menu name="FileMenu" action="FileMenuAction">
      <menuitem name="New" action="New2Action" />
      <placeholder name="FileMenuAdditions" />
    </menu>
    <menu name="JustifyMenu" action="JustifyMenuAction">
      <menuitem name="Left" action="justify-left"/>
      <menuitem name="Centre" action="justify-center"/>
      <menuitem name="Right" action="justify-right"/>
      <menuitem name="Fill" action="justify-fill"/>
    </menu>
  </menubar>
  <toolbar action="toolbar1">
    <placeholder name="JustifyToolItems">
      <separator/>
      <toolitem name="Left" action="justify-left"/>
      <toolitem name="Centre" action="justify-center"/>
      <toolitem name="Right" action="justify-right"/>
      <toolitem name="Fill" action="justify-fill"/>
      <separator/>
    </placeholder>
  </toolbar>
</ui>
}  
The constructed widget hierarchy is very similar to the element tree
of the XML, with the exception that placeholders are merged into their
parents. The correspondence of XML elements to widgets should be
almost obvious:
\describe{
\item{menubar}{a \code{\link{GtkMenuBar}}}
\item{toolbar}{a \code{\link{GtkToolbar}}}
\item{popup}{a toplevel \code{\link{GtkMenu}}}
\item{menu}{a \code{\link{GtkMenu}} attached to a menuitem}
\item{menuitem}{a \code{\link{GtkMenuItem}} subclass, the exact type depends on the
action}
\item{toolitem}{a \code{\link{GtkToolItem}} subclass, the exact type depends on the
action. Note that toolitem elements may contain a menu element, but only
if their associated action specifies a \code{\link{GtkMenuToolButton}} as proxy.}
\item{separator}{a \code{\link{GtkSeparatorMenuItem}} or
\code{\link{GtkSeparatorToolItem}}}
\item{accelerator}{a keyboard accelerator}
}
  
The "position" attribute determines where a constructed widget is positioned
wrt. to its siblings in the partially constructed tree. If it is
"top", the widget is prepended, otherwise it is appended.}
\section{UI Merging}{The most remarkable feature of \code{\link{GtkUIManager}} is that it can overlay a set
of menuitems and toolitems over another one, and demerge them later.
  
Merging is done based on the names of the XML elements. Each element is
identified by a path which consists of the names of its anchestors, separated
by slashes. For example, the menuitem named "Left" in the example above
has the path \code{/ui/menubar/JustifyMenu/Left} and the
toolitem with the same name has path
\code{/ui/toolbar1/JustifyToolItems/Left}.}
\section{Accelerators}{Every action has an accelerator path. Accelerators are installed together with
menuitem proxies, but they can also be explicitly added with <accelerator>
elements in the UI definition. This makes it possible to have accelerators for
actions even if they have no visible proxies.}
\section{Smart Separators}{The separators created by \code{\link{GtkUIManager}} are "smart", i.e. they do not show up
in the UI unless they end up between two visible menu or tool items. Separators
which are located at the very beginning or end of the menu or toolbar
containing them, or multiple separators next to each other, are hidden. This
is a useful feature, since the merging of UI elements from multiple sources
can make it hard or impossible to determine in advance whether a separator
will end up in such an unfortunate position.
  
For separators in toolbars, you can set \code{expand="true"} to
turn them from a small, visible separator to an expanding, invisible one.
Toolitems following an expanding separator are effectively right-aligned.}
\section{Empty Menus}{Submenus pose similar problems to separators inconnection with merging. It is
impossible to know in advance whether they will end up empty after merging.
\code{\link{GtkUIManager}} offers two ways to treat empty submenus:
\itemize{
\item make them disappear by hiding the menu item they're attached to
\item add an insensitive "Empty" item
}
The behaviour is chosen based on the "hide_if_empty" property of the action
to which the submenu is associated.}
\section{GtkUIManager as GtkBuildable}{The GtkUIManager implementation of the GtkBuildable interface accepts
GtkActionGroup objects as <child> elements in UI definitions.
  
A GtkUIManager UI definition as described above can be embedded in
an GtkUIManager <object> element in a GtkBuilder UI definition.
  
The widgets that are constructed by a GtkUIManager can be embedded in
other parts of the constructed user interface with the help of the
"constructor" attribute. See the example below.
  
 \emph{An embedded GtkUIManager UI definition}\preformatted{<object class="GtkUIManager" id="uiman">
  <child>
    <object class="GtkActionGroup" id="actiongroup">
      <child>
        <object class="GtkAction" id="file">
          <property name="label">_File</property>
        </object>
      </child>
    </object>
  </child>
  <ui>
    <menubar name="menubar1">
      <menu action="file">
      </menu>
    </menubar>
  </ui>
</object>
<object class="GtkWindow" id="main-window">
  <child>
    <object class="GtkMenuBar" id="menubar1" constructor="uiman"/>
  </child>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkUIManager}}{
The \code{GtkUIManager} struct contains only private
members and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkUIManager} is the equivalent of \code{\link{gtkUIManagerNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkUIManagerItemType}}{
These enumeration values are used by \code{\link{gtkUIManagerAddUi}} to determine
what UI element to create.

\describe{
\item{\verb{auto}}{Pick the type of the UI element according to context.}
\item{\verb{menubar}}{Create a menubar.}
\item{\verb{menu}}{Create a menu.}
\item{\verb{toolbar}}{Create a toolbar.}
\item{\verb{placeholder}}{Insert a placeholder.}
\item{\verb{popup}}{Create a popup menu.}
\item{\verb{menuitem}}{Create a menuitem.}
\item{\verb{toolitem}}{Create a toolitem.}
\item{\verb{separator}}{Create a separator.}
\item{\verb{accelerator}}{Install an accelerator.}
}

}}}
\section{Signals}{\describe{
\item{\code{actions-changed(merge, user.data)}}{
The "actions-changed" signal is emitted whenever the set of actions
changes.
  Since 2.4

\describe{
\item{\code{merge}}{a \code{\link{GtkUIManager}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{add-widget(merge, widget, user.data)}}{
The add_widget signal is emitted for each generated menubar and toolbar.
It is not emitted for generated popup menus, which can be obtained by
\code{\link{gtkUIManagerGetWidget}}.
  Since 2.4

\describe{
\item{\code{merge}}{a \code{\link{GtkUIManager}}}
\item{\code{widget}}{the added widget}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{connect-proxy(uimanager, action, proxy, user.data)}}{
The connect_proxy signal is emitted after connecting a proxy to
an action in the group.
  
This is intended for simple customizations for which a custom action
class would be too clumsy, e.g. showing tooltips for menuitems in the
statusbar.
  Since 2.4

\describe{
\item{\code{uimanager}}{the ui manager}
\item{\code{action}}{the action}
\item{\code{proxy}}{the proxy}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{disconnect-proxy(uimanager, action, proxy, user.data)}}{
The disconnect_proxy signal is emitted after disconnecting a proxy
from an action in the group.
  Since 2.4

\describe{
\item{\code{uimanager}}{the ui manager}
\item{\code{action}}{the action}
\item{\code{proxy}}{the proxy}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{post-activate(uimanager, action, user.data)}}{
The post_activate signal is emitted just after the \code{action}
is activated.
  
This is intended for applications to get notification
just after any action is activated.
  Since 2.4

\describe{
\item{\code{uimanager}}{the ui manager}
\item{\code{action}}{the action}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{pre-activate(uimanager, action, user.data)}}{
The pre_activate signal is emitted just before the \code{action}
is activated.
  
This is intended for applications to get notification
just before any action is activated.
  Since 2.4

\describe{
\item{\code{uimanager}}{the ui manager}
\item{\code{action}}{the action}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{add-tearoffs} [logical : Read / Write]}{

The "add-tearoffs" property controls whether generated menus
have tearoff menu items.
  
Note that this only affects regular menus. Generated popup
menus never have tearoff menu items.
  Default value: FALSE  Since 2.4

}
\item{\verb{ui} [character : *                : Read]}{

An XML string describing the merged UI.  Default value: "<ui>\\n</ui>\\n"

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkUIManager.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkBuilder}}}
\keyword{internal}
