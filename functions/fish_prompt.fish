function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set_color green
  echo -n '[' 
  echo -n (pwd | sed "s,^$HOME,~,") 
  echo -n ']'
  set_color cyan
  echo -n (__git_ps1)
  if [ (_is_git_dirty) ]
    echo -n " *"
  end  
  echo
  set_color normal
  echo -n '$ '
end
