function gws
  set target (git worktree list | fzf)
  set targetdir (echo $target | gsed -e "s#\s.*##")
  set targetname (echo $target | gsed -e "s#.*\[#\[#")
  if test -n "$targetdir"
    if test "$targetdir" -ef (pwd)
      echo "ALREADY HERE"
    else
      echo "Changing to $targetname"
      cd "$targetdir"
    end
  end
end
