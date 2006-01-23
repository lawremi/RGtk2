# We want to ignore irrelevant modifiers like ScrollLock
all_accels_mask <- GdkModifierType["control-mask"] | 
	GdkModifierType["shift-mask"] | GdkModifierType["mod1-mask"]
state <- gdkKeymapTranslateKeyboardState(keymap, event[["hardware_keycode"]],
                                     event[["state"]], event[["group"]])
if (state$keyval == .gdkPlus &&
  flag(event[["state"]]) & !flag(state$consumed) & 
  all_accels_mask == GdkModifierType["control-mask"])
	print("Control was pressed")
