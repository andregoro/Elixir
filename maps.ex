map =%{:a => 1,2 => :b}
IO.puts(map[:a])
IO.puts(map[2])

new_map=Dict.put_new(map,:new_maps,"novo")
IO.puts(new_map[:new_maps])
