function fj
  set pp (echo $projects | gsed -e "s#\w*#$HOME/&#g" | tr " " "\n")
  set subproject (find $pp -maxdepth 1 -mindepth 1 -type d | gsed -e "s#$HOME#~#g" | fzf | gsed -e "s#~#$HOME#")
  if test -n "$subproject"
    cd "$subproject"
  end
end
