\alias{GtkEntryCompletion}
\alias{gtkEntryCompletion}
\alias{GtkEntryCompletionMatchFunc}
\name{GtkEntryCompletion}
\title{GtkEntryCompletion}
\description{Completion functionality for GtkEntry}
\usage{
\link{gtkEntryCompletionNew}()
\link{gtkEntryCompletionGetEntry}(object)
\link{gtkEntryCompletionSetModel}(object, model = NULL)
\link{gtkEntryCompletionGetModel}(object)
\link{gtkEntryCompletionSetMatchFunc}(object, func, func.data = NULL)
\link{gtkEntryCompletionSetMinimumKeyLength}(object, length)
\link{gtkEntryCompletionGetMinimumKeyLength}(object)
\link{gtkEntryCompletionComplete}(object)
\link{gtkEntryCompletionInsertPrefix}(object)
\link{gtkEntryCompletionInsertActionText}(object, index, text)
\link{gtkEntryCompletionInsertActionMarkup}(object, index, markup)
\link{gtkEntryCompletionDeleteAction}(object, index)
\link{gtkEntryCompletionSetTextColumn}(object, column)
\link{gtkEntryCompletionGetTextColumn}(object)
\link{gtkEntryCompletionSetInlineCompletion}(object, inline.completion)
\link{gtkEntryCompletionGetInlineCompletion}(object)
\link{gtkEntryCompletionSetPopupCompletion}(object, popup.completion)
\link{gtkEntryCompletionGetPopupCompletion}(object)
\link{gtkEntryCompletionSetPopupSetWidth}(object, popup.set.width)
\link{gtkEntryCompletionGetPopupSetWidth}(object)
\link{gtkEntryCompletionSetPopupSingleMatch}(object, popup.single.match)
\link{gtkEntryCompletionGetPopupSingleMatch}(object)
gtkEntryCompletion()
}
\details{\code{\link{GtkEntryCompletion}} is an auxiliary object to be used in conjunction with
\code{\link{GtkEntry}} to provide the completion functionality. It implements the
\code{\link{GtkCellLayout}} interface, to allow the user to add extra cells to the 
\code{\link{GtkTreeView}} with completion matches. 
  
"Completion functionality" means that when the user modifies the text 
in the entry, \code{\link{GtkEntryCompletion}} checks which rows in the model match 
the current content of the entry, and displays a list of matches.
By default, the matching is done by comparing the entry text 
case-insensitively against the text column of the model (see 
\code{\link{gtkEntryCompletionSetTextColumn}}), but this can be overridden with 
a custom match function (see \code{\link{gtkEntryCompletionSetMatchFunc}}).
  
When the user selects a completion, the content of the entry is updated. 
By default, the content of the entry is replaced by the text column of the 
model, but this can be overridden by connecting to the ::match-selected signal
and updating the entry in the signal handler. Note that you should return 
\code{TRUE} from the signal handler to suppress the default behaviour.
  
To add completion functionality to an entry, use \code{\link{gtkEntrySetCompletion}}.
  
In addition to regular completion matches, which will be inserted into the
entry when they are selected, \code{\link{GtkEntryCompletion}} also allows to display 
"actions" in the popup window. Their appearance is similar to menuitems, 
to differentiate them clearly from completion strings. When an action is 
selected, the ::action-activated signal is emitted.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkEntryCompletion}}
\section{Structures}{\describe{\item{\code{GtkEntryCompletion}}{
The GtkEntryCompletion struct contains only private data.

}}}
\section{Convenient Construction}{\code{gtkEntryCompletion} is the equivalent of \code{\link{gtkEntryCompletionNew}}.}
\section{User Functions}{\describe{\item{\code{GtkEntryCompletionMatchFunc(completion, key, iter, user.data)}}{
A function which decides whether the row indicated by \code{iter} matches a given 
\code{key}, and should be displayed as a possible completion for \code{key}. Note that
\code{key} is normalized and case-folded (see \code{gUtf8Normalize()} and 
\code{gUtf8Casefold()}). If this is not appropriate, match functions have access
to the unmodified key via \code{gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry (}.

\describe{
\item{\code{completion}}{[\code{\link{GtkEntryCompletion}}] the \code{\link{GtkEntryCompletion}}}
\item{\code{key}}{[character] the string to match, normalized and case-folded}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} indicating the row to match}
\item{\code{user.data}}{[R object] user data given to \code{\link{gtkEntryCompletionSetMatchFunc}}}
}

}}}
\section{Interfaces}{GtkEntryCompletion implements
 \code{\link{GtkCellLayout}}.}
\section{Signals}{\describe{
\item{\code{action-activated(widget, index, user.data)}}{
Gets emitted when an action is activated.  

  Since  2.4

\describe{
\item{\code{widget}}{[\code{\link{GtkEntryCompletion}}]  the object which received the signal}
\item{\code{index}}{[integer]  the index of the activated action}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-prefix(widget, prefix, user.data)}}{
Gets emitted when the inline autocompletion is triggered. 
The default behaviour is to make the entry display the 
whole prefix and select the newly inserted part.
  
Applications may connect to this signal in order to insert only a
smaller part of the \code{prefix} into the entry - e.g. the entry used in
the \code{\link{GtkFileChooser}} inserts only the part of the prefix up to the 
next '/'.  

  Since  2.6

\describe{
\item{\code{widget}}{[\code{\link{GtkEntryCompletion}}]  the object which received the signal}
\item{\code{prefix}}{[character]  the common prefix of all possible completions}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{match-selected(widget, model, iter, user.data)}}{
Gets emitted when a match from the list is selected. 
The default behaviour is to replace the contents of the 
entry with the contents of the text column in the row 
pointed to by \code{iter}.  

  Since  2.4

\describe{
\item{\code{widget}}{[\code{\link{GtkEntryCompletion}}]  the object which received the signal}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  the \code{\link{GtkTreeModel}} containing the matches}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  a \code{\link{GtkTreeIter}} positioned at the selected match}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{inline-completion} [logical : Read / Write]}{

Determines whether the common prefix of the possible completions 
should be inserted automatically in the entry. Note that this
requires text-column to be set, even if you are using a custom
match function.  

  Default value: FALSE  Since  2.6

}
\item{\code{minimum-key-length} [integer : Read / Write]}{

Minimum length of the search key in order to look up matches.  Allowed values: >= 0  Default value: 1

}
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model to find matches in.

}
\item{\code{popup-completion} [logical : Read / Write]}{

Determines whether the possible completions should be 
shown in a popup window.  

  Default value: TRUE  Since  2.6

}
\item{\code{popup-set-width} [logical : Read / Write]}{

Determines whether the completions popup window will be
resized to the width of the entry.  

  Default value: TRUE  Since  2.8

}
\item{\code{popup-single-match} [logical : Read / Write]}{

Determines whether the completions popup window will shown
for a single possible completion. You probably want to set
this to \code{FALSE} if you are using 
inline 
completion.  

  Default value: TRUE  Since  2.8

}
\item{\code{text-column} [integer : Read / Write]}{

The column of the model containing the strings.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkEntryCompletion.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
