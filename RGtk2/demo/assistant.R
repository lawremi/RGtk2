on_assistant_apply <- function(widget, data)
{
  # do something
}

on_assistant_prepare <- function(widget, page, data)
{
  current_page <- widget$getCurrentPage()
  n_pages <- widget$getNPages()

  title <- sprintf("Sample assistant (%d of %d)", current_page + 1, n_pages)
  widget$setTitle(title)
}

on_entry_changed <- function(widget, assistant)
{
  page_number <- assistant$getCurrentPage()
  current_page <- assistant$getNthPage(page_number)
  text <- widget$getText()

  if (!is.null(text) && nchar(text) > 0)
    assistant$setPageComplete(current_page, TRUE)
  else
    assistant$setPageComplete(current_page, FALSE)
}

create_page1 <- function(assistant)
{
  box <- gtkHBox(FALSE, 12)
  box$setBorderWidth(12)

  label <- gtkLabel("You must fill out this entry to continue:")
  box$packStart(label, FALSE, FALSE, 0)

  entry <- gtkEntry()
  box$packStart(entry, TRUE, TRUE, 0)
  gSignalConnect(entry, "changed", on_entry_changed, assistant)

  assistant$appendPage(box)
  assistant$setPageTitle(box, "Page 1")
  assistant$setPageType(box, "intro")
  
  pixbuf <- assistant$renderIcon(GTK_STOCK_DIALOG_INFO, "dialog")
  assistant$setPageHeaderImage(box, pixbuf)
}

create_page2 <- function(assistant)
{
  box <- gtkVBox(FALSE, 12)
  box$setBorderWidth(12)

  checkbutton <- gtkCheckButton(paste("This is optional data, you may continue",
						 "even if you do not check this"))
  box$packStart(checkbutton, FALSE, FALSE, 0)

  assistant$appendPage(box)
  assistant$setPageComplete(box, TRUE)
  assistant$setPageTitle(box, "Page 2")

  pixbuf <- assistant$renderIcon(GTK_STOCK_DIALOG_INFO, "dialog")
  assistant$setPageHeaderImage(box, pixbuf)
}

create_page3 <- function(assistant)
{
  label <- gtkLabel("This is a confirmation page, press 'Apply' to apply changes")

  assistant$appendPage(label)
  assistant$setPageType(label, "confirm")
  assistant$setPageComplete(label, TRUE)
  assistant$setPageTitle(label, "Confirmation")

  pixbuf <- assistant$renderIcon(GTK_STOCK_DIALOG_INFO, "dialog")
  assistant$setPageHeaderImage(label, pixbuf)
}

assistant <- gtkAssistant(show = F)

assistant$setDefaultSize(-1, 300)

create_page1(assistant)
create_page2(assistant)
create_page3(assistant)

gSignalConnect(assistant, "cancel", gtkWidgetDestroy)
gSignalConnect(assistant, "close", gtkWidgetDestroy)
gSignalConnect(assistant, "apply", on_assistant_apply)
gSignalConnect(assistant, "prepare", on_assistant_prepare)

assistant$showAll()
