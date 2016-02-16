function gc-branch
  set -l message (git symbolic-ref HEAD | cut -d"/" -f 4-10 | sed "s/-/ /g")
  echo $message
  git commit -m $message
end
