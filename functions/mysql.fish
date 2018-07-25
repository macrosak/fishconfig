function mysql
  if tty > /dev/null
      docker exec -ti tga_mysql_1 mysql $argv
  else
      docker exec -i tga_mysql_1 mysql $argv
  end
end
