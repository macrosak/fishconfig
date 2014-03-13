function gfetchall
  git remote | xargs -n 1 git fetch
end
