function dock_enable
#  defaults delete com.apple.dock autohide-time-modifier
  defaults delete com.apple.dock autohide-delay
  killall Dock
end
