\alias{gtk-GtkTextIter}
\alias{GtkTextIter}
\alias{GtkTextCharPredicate}
\alias{GtkTextSearchFlags}
\name{gtk-GtkTextIter}
\title{GtkTextIter}
\description{Text buffer iterator}
\section{Methods and Functions}{
\link{gtkTextIterGetBuffer}(object)
\link{gtkTextIterCopy}(object)
\link{gtkTextIterGetOffset}(object)
\link{gtkTextIterGetLine}(object)
\link{gtkTextIterGetLineOffset}(object)
\link{gtkTextIterGetLineIndex}(object)
\link{gtkTextIterGetVisibleLineIndex}(object)
\link{gtkTextIterGetVisibleLineOffset}(object)
\link{gtkTextIterGetChar}(object)
\link{gtkTextIterGetSlice}(object, end)
\link{gtkTextIterGetText}(object, end)
\link{gtkTextIterGetVisibleSlice}(object, end)
\link{gtkTextIterGetVisibleText}(object, end)
\link{gtkTextIterGetPixbuf}(object)
\link{gtkTextIterGetMarks}(object)
\link{gtkTextIterGetToggledTags}(object, toggled.on)
\link{gtkTextIterGetChildAnchor}(object)
\link{gtkTextIterBeginsTag}(object, tag = NULL)
\link{gtkTextIterEndsTag}(object, tag = NULL)
\link{gtkTextIterTogglesTag}(object, tag = NULL)
\link{gtkTextIterHasTag}(object, tag)
\link{gtkTextIterGetTags}(object)
\link{gtkTextIterEditable}(object, default.setting)
\link{gtkTextIterCanInsert}(object, default.editability)
\link{gtkTextIterStartsWord}(object)
\link{gtkTextIterEndsWord}(object)
\link{gtkTextIterInsideWord}(object)
\link{gtkTextIterStartsLine}(object)
\link{gtkTextIterEndsLine}(object)
\link{gtkTextIterStartsSentence}(object)
\link{gtkTextIterEndsSentence}(object)
\link{gtkTextIterInsideSentence}(object)
\link{gtkTextIterIsCursorPosition}(object)
\link{gtkTextIterGetCharsInLine}(object)
\link{gtkTextIterGetBytesInLine}(object)
\link{gtkTextIterGetAttributes}(object, values)
\link{gtkTextIterGetLanguage}(object)
\link{gtkTextIterIsEnd}(object)
\link{gtkTextIterIsStart}(object)
\link{gtkTextIterForwardChar}(object)
\link{gtkTextIterBackwardChar}(object)
\link{gtkTextIterForwardChars}(object, count)
\link{gtkTextIterBackwardChars}(object, count)
\link{gtkTextIterForwardLine}(object)
\link{gtkTextIterBackwardLine}(object)
\link{gtkTextIterForwardLines}(object, count)
\link{gtkTextIterBackwardLines}(object, count)
\link{gtkTextIterForwardWordEnds}(object, count)
\link{gtkTextIterBackwardWordStarts}(object, count)
\link{gtkTextIterForwardWordEnd}(object)
\link{gtkTextIterBackwardWordStart}(object)
\link{gtkTextIterForwardCursorPosition}(object)
\link{gtkTextIterBackwardCursorPosition}(object)
\link{gtkTextIterForwardCursorPositions}(object, count)
\link{gtkTextIterBackwardCursorPositions}(object, count)
\link{gtkTextIterBackwardSentenceStart}(object)
\link{gtkTextIterBackwardSentenceStarts}(object, count)
\link{gtkTextIterForwardSentenceEnd}(object)
\link{gtkTextIterForwardSentenceEnds}(object, count)
\link{gtkTextIterForwardVisibleWordEnds}(object, count)
\link{gtkTextIterBackwardVisibleWordStarts}(object, count)
\link{gtkTextIterForwardVisibleWordEnd}(object)
\link{gtkTextIterBackwardVisibleWordStart}(object)
\link{gtkTextIterForwardVisibleCursorPosition}(object)
\link{gtkTextIterBackwardVisibleCursorPosition}(object)
\link{gtkTextIterForwardVisibleCursorPositions}(object, count)
\link{gtkTextIterBackwardVisibleCursorPositions}(object, count)
\link{gtkTextIterForwardVisibleLine}(object)
\link{gtkTextIterBackwardVisibleLine}(object)
\link{gtkTextIterForwardVisibleLines}(object, count)
\link{gtkTextIterBackwardVisibleLines}(object, count)
\link{gtkTextIterSetOffset}(object, char.offset)
\link{gtkTextIterSetLine}(object, line.number)
\link{gtkTextIterSetLineOffset}(object, char.on.line)
\link{gtkTextIterSetLineIndex}(object, byte.on.line)
\link{gtkTextIterSetVisibleLineIndex}(object, byte.on.line)
\link{gtkTextIterSetVisibleLineOffset}(object, char.on.line)
\link{gtkTextIterForwardToEnd}(object)
\link{gtkTextIterForwardToLineEnd}(object)
\link{gtkTextIterForwardToTagToggle}(object, tag = NULL)
\link{gtkTextIterBackwardToTagToggle}(object, tag = NULL)
\link{gtkTextIterForwardFindChar}(object, pred, user.data = NULL, limit)
\link{gtkTextIterBackwardFindChar}(object, pred, user.data = NULL, limit)
\link{gtkTextIterForwardSearch}(object, str, flags, limit = NULL)
\link{gtkTextIterBackwardSearch}(object, str, flags, limit = NULL)
\link{gtkTextIterEqual}(object, rhs)
\link{gtkTextIterCompare}(object, rhs)
\link{gtkTextIterInRange}(object, start, end)
\link{gtkTextIterOrder}(object, second)
}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\code{GtkTextIter}}{\emph{undocumented
}}}}
\section{Enums and Flags}{\describe{\item{\code{enum GtkTextSearchFlags}}{


\describe{
\item{\code{GTK_TEXT_SEARCH_VISIBLE_ONLY (visible-only)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_SEARCH_TEXT_ONLY (text-only)}}{\emph{undocumented
}}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTextCharPredicate(ch, user.data)}}{


\describe{
\item{\code{ch}}{[numeric] }
\item{\code{user.data}}{[R object] }
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-GtkTextIter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
