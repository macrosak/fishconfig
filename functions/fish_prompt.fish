function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  if set -q CMD_DURATION
    echo \a(set_color 555555)\> Took $CMD_DURATION
    set -l time_sec (echo $CMD_DURATION | cut -d'.' -f1)
    if test $time_sec -gt 10 ;and which terminal-notifier > /dev/null
      terminal-notifier -message "Shell command $history[1] is done!" -title "Command done"
    end
  end
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

