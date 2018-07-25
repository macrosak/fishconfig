function grecent
  git reflog | grep -E "to (feat|fix|chore)" | cut -d' ' -f8 | head $argv | awk '!x[$0]++'
end
