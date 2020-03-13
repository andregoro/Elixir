list_1=[{:a,1},{:b,2}]
list_2=[{:a,1},{:b,2}]
IO.puts(list_1==list_2)

kl = [a: 1, a: 2, b: 3]
IO.puts(Keyword.get(kl, :a))
IO.puts(Keyword.get_values(kl))
