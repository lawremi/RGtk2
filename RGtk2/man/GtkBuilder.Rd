\alias{GtkBuilder}
\alias{gtkBuilder}
\alias{GtkBuilderConnectFunc}
\alias{GtkBuilderError}
\name{GtkBuilder}
\title{GtkBuilder}
\description{Build an interface from an XML UI definition}
\section{Methods and Functions}{
\code{\link{gtkBuilderNew}()}\cr
\code{\link{gtkBuilderAddFromFile}(object, filename, .errwarn = TRUE)}\cr
\code{\link{gtkBuilderAddFromString}(object, buffer, length, .errwarn = TRUE)}\cr
\code{\link{gtkBuilderAddObjectsFromFile}(object, filename, object.ids, .errwarn = TRUE)}\cr
\code{\link{gtkBuilderAddObjectsFromString}(object, buffer, length, object.ids, .errwarn = TRUE)}\cr
\code{\link{gtkBuilderGetObject}(object, name)}\cr
\code{\link{gtkBuilderGetObjects}(object)}\cr
\code{\link{gtkBuilderConnectSignals}(object, user.data = NULL)}\cr
\code{\link{gtkBuilderConnectSignalsFull}(object, func, user.data)}\cr
\code{\link{gtkBuilderSetTranslationDomain}(object, domain)}\cr
\code{\link{gtkBuilderGetTranslationDomain}(object)}\cr
\code{\link{gtkBuilderGetTypeFromName}(object, type.name)}\cr
\code{\link{gtkBuilderValueFromString}(object, pspec, string, .errwarn = TRUE)}\cr
\code{\link{gtkBuilderValueFromStringType}(object, type, string, .errwarn = TRUE)}\cr
\code{gtkBuilder()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkBuilder}}
\section{Detailed Description}{A GtkBuilder is an auxiliary object that reads textual descriptions
of a user interface and instantiates the described objects. To pass a
description to a GtkBuilder, call \code{\link{gtkBuilderAddFromFile}} or
\code{\link{gtkBuilderAddFromString}}. These functions can be called multiple
times; the builder merges the content of all descriptions.
  
A GtkBuilder holds a reference to all objects that it has constructed
and drops these references when it is finalized. This finalization can
cause the destruction of non-widget objects or widgets which are not
contained in a toplevel window. For toplevel windows constructed by a
builder, it is the responsibility of the user to call \code{\link{gtkWidgetDestroy}}
to get rid of them and all the widgets they contain.
  
The functions \code{\link{gtkBuilderGetObject}} and \code{\link{gtkBuilderGetObjects}}
can be used to access the widgets in the interface by the names assigned
to them inside the UI description. Toplevel windows returned by these
functions will stay around until the user explicitly destroys them
with \code{\link{gtkWidgetDestroy}}. Other widgets will either be part of a
larger hierarchy constructed by the builder (in which case you should
not have to worry about their lifecycle), or without a parent, in which
case they have to be added to some container to make use of them.
Non-widget objects need to be reffed with \code{gObjectRef()} to keep them
beyond the lifespan of the builder.
  
The function \code{\link{gtkBuilderConnectSignals}} and variants thereof can be
used to connect handlers to the named signals in the description.}
\section{GtkBuilder UI Definitions}{GtkBuilder parses textual descriptions of user interfaces which
are specified in an XML format which can be roughly described
by the DTD below. We refer to these descriptions as
\dfn{GtkBuilder UI definitions} or just
\dfn{UI definitions} if the context is clear.
Do not confuse GtkBuilder UI Definitions with
GtkUIManager UI Definitions,
which are more limited in scope.
  \preformatted{<!ELEMENT interface (requires|object)* >
<!ELEMENT object    (property|signal|child|ANY)* >
<!ELEMENT property  PCDATA >
<!ELEMENT signal    EMPTY >
<!ELEMENT requires  EMPTY >
<!ELEMENT child     (object|ANY*) >
<!ATTLIST interface  domain         	    #IMPLIED >
<!ATTLIST object     id             	    #REQUIRED
                     class          	    #REQUIRED
                     type-func      	    #IMPLIED
                     constructor    	    #IMPLIED >
<!ATTLIST requires   lib             	    #REQUIRED
                     version          	    #REQUIRED >
<!ATTLIST property   name           	    #REQUIRED
                     translatable   	    #IMPLIED
                     comments               #IMPLIED
                     context                #IMPLIED >
<!ATTLIST signal     name           	    #REQUIRED
                     handler        	    #REQUIRED
                     after          	    #IMPLIED
                     swapped        	    #IMPLIED
                     object         	    #IMPLIED
                     last_modification_time #IMPLIED >
<!ATTLIST child      type           	    #IMPLIED
                     internal-child 	    #IMPLIED >
}  
The toplevel element is <interface>.
It optionally takes a "domain" attribute, which will make
the builder look for translated strings using \code{dgettext()} in the
domain specified. This can also be done by calling
\code{\link{gtkBuilderSetTranslationDomain}} on the builder.
Objects are described by <object> elements, which can
contain <property> elements to set properties, <signal>
elements which connect signals to handlers, and <child>
elements, which describe child objects (most often widgets
inside a container, but also e.g. actions in an action group,
or columns in a tree model). A <child> element contains
an <object> element which describes the child object.
The target toolkit version(s) are described by <requires>
elements, the "lib" attribute specifies the widget library in
question (currently the only supported value is "gtk+") and the "version"
attribute specifies the target version in the form "<major>.<minor>".
The builder will error out if the version requirements are not met.
  
Typically, the specific kind of object represented by an
<object> element is specified by the "class" attribute.
If the type has not been loaded yet, GTK+ tries to find the
\code{getType()} from the class name by applying
heuristics. This works in most cases, but if necessary, it is
possible to specify the name of the \code{getType()}
explictly with the "type-func" attribute. As a special case,
GtkBuilder allows to use an object that has been constructed
by a \code{\link{GtkUIManager}} in another part of the UI definition by
specifying the id of the \code{\link{GtkUIManager}} in the "constructor"
attribute and the name of the object in the "id" attribute.
  
Objects must be given a name with the "id" attribute, which
allows the application to retrieve them from the builder with
\code{\link{gtkBuilderGetObject}}. An id is also necessary to use the
object as property value in other parts of the UI definition.
  \strong{PLEASE NOTE:} Prior to 2.20, GtkBuilder was setting the "name"
property of constructed widgets to the "id" attribute. In GTK+
2.20 or newer, you have to use \code{\link{gtkBuildableGetName}} instead
of \code{\link{gtkWidgetGetName}} to obtain the "id", or set the "name"
property in your UI definition.  
Setting properties of objects is pretty straightforward with
the <property> element: the "name" attribute specifies
the name of the property, and the content of the element
specifies the value. If the "translatable" attribute is
set to a true value, GTK+ uses \code{gettext()} (or \code{dgettext()} if
the builder has a translation domain set) to find a translation
for the value. This happens before the value is parsed, so
it can be used for properties of any type, but it is probably
most useful for string properties. It is also possible to
specify a context to disambiguate short strings, and comments
which may help the translators.
  
GtkBuilder can parse textual representations for the most
common property types: characters, strings, integers, floating-point
numbers, booleans (strings like "TRUE", "t", "yes", "y", "1" are
interpreted as \code{TRUE}, strings like "FALSE, "f", "no", "n", "0" are
interpreted as \code{FALSE}), enumerations (can be specified by their
name, nick or integer value), flags (can be specified by their name,
nick, integer value, optionally combined with "|", e.g.
"GTK_VISIBLE|GTK_REALIZED")  and colors (in a format understood by
\code{\link{gdkColorParse}}). Objects can be referred to by their name.
Pixbufs can be specified as a filename of an image file to load.
In general, GtkBuilder allows forward references to objects --
an object doesn't have to constructed before it can be referred to.
The exception to this rule is that an object has to be constructed
before it can be used as the value of a construct-only property.
  
Signal handlers are set up with the <signal> element.
The "name" attribute specifies the name of the signal, and the
"handler" attribute specifies the function to connect to the signal.
By default, GTK+ tries to find the handler using \code{gModuleSymbol()},
but this can be changed by passing a custom \code{\link{GtkBuilderConnectFunc}}
to \code{\link{gtkBuilderConnectSignalsFull}}. The remaining attributes,
"after", "swapped" and "object", have the same meaning as the
corresponding parameters of the \code{gSignalConnectObject()} or
\code{gSignalConnectData()} functions. A "last_modification_time" attribute
is also allowed, but it does not have a meaning to the builder.
  
Sometimes it is necessary to refer to widgets which have implicitly
been constructed by GTK+ as part of a composite widget, to set
properties on them or to add further children (e.g. the \code{vbox}
of a \code{\link{GtkDialog}}). This can be achieved by setting the "internal-child"
propery of the <child> element to a true value. Note that
GtkBuilder still requires an <object> element for the internal
child, even if it has already been constructed.
  
A number of widgets have different places where a child can be
added (e.g. tabs vs. page content in notebooks). This can be reflected
in a UI definition by specifying the "type" attribute on a <child>
The possible values for the "type" attribute are described in
the sections describing the widget-specific portions of UI definitions.
  
 \emph{A GtkBuilder UI Definition}\preformatted{<interface>
  <object class="GtkDialog" id="dialog1">
    <child internal-child="vbox">
      <object class="GtkVBox" id="vbox1">
        <property name="border-width">10</property>
        <child internal-child="action_area">
          <object class="GtkHButtonBox" id="hbuttonbox1">
            <property name="border-width">20</property>
            <child>
              <object class="GtkButton" id="ok_button">
                <property name="label">gtk-ok</property>
                <property name="use-stock">TRUE</property>
                <signal name="clicked" handler="ok_button_clicked"/>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
}  
Beyond this general structure, several object classes define
their own XML DTD fragments for filling in the ANY placeholders
in the DTD above. Note that a custom element in a <child>
element gets parsed by the custom tag handler of the parent
object, while a custom element in an <object> element
gets parsed by the custom tag handler of the object.
  
These XML fragments are explained in the documentation of the
respective objects, see
GtkWidget,
GtkLabel,
GtkWindow,
GtkContainer,
GtkDialog,
GtkCellLayout,
GtkColorSelectionDialog,
GtkFontSelectionDialog,
GtkComboBoxEntry,
GtkExpander,
GtkFrame,
GtkListStore,
GtkTreeStore,
GtkNotebook,
GtkSizeGroup,
GtkTreeView,
GtkUIManager,
GtkActionGroup.
GtkMenuItem,
GtkAssistant,
GtkScale.}
\section{Structures}{\describe{\item{\verb{GtkBuilder}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkBuilder} is the equivalent of \code{\link{gtkBuilderNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkBuilderError}}{
Error codes that identify various errors that can occur while
using \code{\link{GtkBuilder}}.

\describe{
\item{\verb{invalid-type-function}}{A type-func attribute didn't name
    a function that returns a \code{\link{GType}}.}
\item{\verb{unhandled-tag}}{The input contained a tag that \code{\link{GtkBuilder}}
    can't handle.}
\item{\verb{missing-attribute}}{An attribute that is required by
    \code{\link{GtkBuilder}} was missing.}
\item{\verb{invalid-attribute}}{\code{\link{GtkBuilder}} found an attribute that 
    it doesn't understand.}
\item{\verb{invalid-tag}}{\code{\link{GtkBuilder}} found a tag that
    it doesn't understand.}
\item{\verb{missing-property-value}}{A required property value was 
    missing.}
\item{\verb{invalid-value}}{\code{\link{GtkBuilder}} couldn't parse
    some attribute value.}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkBuilderConnectFunc(builder, object, signal.name, handler.name, connect.object, flags, user.data)}}{
This is the signature of a function used to connect signals.  It is used
by the \code{\link{gtkBuilderConnectSignals}} and \code{\link{gtkBuilderConnectSignalsFull}}
methods.  It is mainly intended for interpreted language bindings, but
could be useful where the programmer wants more control over the signal
connection process.
  Since 2.12

\describe{
\item{\code{builder}}{a \code{\link{GtkBuilder}}}
\item{\code{object}}{object to connect a signal to}
\item{\code{signal.name}}{name of the signal}
\item{\code{handler.name}}{name of the handler}
\item{\code{connect.object}}{a \code{\link{GObject}}, if non-\code{NULL}, use \code{gSignalConnectObject()}}
\item{\code{flags}}{\code{\link{GConnectFlags}} to use}
\item{\code{user.data}}{user data}
}


}}}
\section{Properties}{\describe{\item{\verb{translation-domain} [character : *                : Read / Write]}{

The translation domain used when translating property values that
have been marked as translatable in interface descriptions.
If the translation domain is \code{NULL}, \code{\link{GtkBuilder}} uses \code{gettext()},
otherwise \code{gDgettext()}.
  Default value: NULL  Since 2.12

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkBuilder.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
