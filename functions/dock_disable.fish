function dock_disable
#  defaults write com.apple.dock autohide-time-modifier -int 1000; killall Dock
  defaults write com.apple.dock autohide-delay -float 5
  killall Dock
end
