message="message"
title="title"
icon = c("error", "info", "question", "warning")
type = c("ok", "okcancel", "retrycancel", "yesno", "yesnocancel")

for(i in icon) {
  for(j in type) {
    tkmessageBox(title=paste(title,i,j,sep="-"),
                 message=paste(message, i,j,sep="-"),
                 icon=i,
                 type=j)
  }
}
