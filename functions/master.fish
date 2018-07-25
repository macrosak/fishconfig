function master
  git checkout --detach
  git fetch origin
  git fetch origin master:master
  git checkout master
#  git pull --ff-only origin master
end
