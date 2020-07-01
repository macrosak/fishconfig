function grecent
  git reflog | cut -d' ' -f8 | grep - | head $argv | awk '!x[$0]++'
end
