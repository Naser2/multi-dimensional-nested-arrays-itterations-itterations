very_nested_array = [
  ["this", "is", "the", "first", "child", ["this", "is", "the", "grandchild"] ],
  ["now", "we're", "back", "in", "the", "second", "level",   ["now", "we're", "back", "in", "the", "grandchild", "level"] ]
]

# p very_nested_array[0][2]


music_library = [   ["Adele", ["19", ["Day Dreamer", "Best for Last"]],
["21", ["Rolling in the Deep", "Rumor Has It"]]], # all this is part of Arra[1]
["Beyonce", ["4", ["1 + 1", "Countdown"]],
 ["Beyonce", ["Haunted", "Pretty Hurts"]]]]

 p music_library[0][1][0] #=> #19
  p music_library[0][1][1] # => ["day..., ...."]
    p music_library[0][1][1][1] #=> [".., Best for last"]
      p music_library[1][1] #=> ["4", ["1 +1", count...]]
       p music_library[1][1][0] #=> "4"
         p music_library[1][1][1] #=>  ["1+1"...]]
           p music_library[1][1][1][0] #=> "1 + 1"
            p music_library[1][1][1][1] #=> "Countdown"
              p "Hey Bey"
                p music_library[1][0] #=> "Beyonce"
                  p "Hey Bey & Haunted.."
                    p music_library[1][2] #=> [["Beyonce", ["Hau..", "Pretty ..."]]
                      p music_library[1][2][0] #=> "Beyonce"
                        p music_library[1][2][1][0] #=> "haunted"
                          "Hey Bey[1]" # pretty
                           p music_library[1][2][1][1] #=> "pretty hurts"
                           p music_library[0][1][1].count# => 2
                           p music_library[0][1].inspect# =>  "[\"19\", [\"Day Dreamer\", \"Best for Last\"]]"
                           p music_library[0].inspect# => "[\"Adele\", [\"19\", [\"Day Dreamer\", \"Best for Last\"]], [\"21\", [\"Rolling in the Deep\", \"Rumor Has It\"]]]"
                           p music_library.inspect # =>  "[[\"Adele\", [\"19\", [\"Day Dreamer\", \"Best for Last\"]], [\"21\", [\"Rolling in the Deep\", \"Rumor Has It\"]]], [\"Beyonce\", [\"4\", [\"1 + 1\", \"Countdown\"]], [\"Beyonce\", [\"Haunted\", \"Pretty Hurts\"]]]]"
                           p music_library[1].count # => 3
                           p music_library[0][1].count # => 2
                           p music_library[0].count  # => 3
                           p music_library[1].count  # => 3
                           p music_library[0].inspect #=>"[\"Adele\", [\"19\", [\"Day Dreamer\", \"Best for Last\"]], [\"21\", [\"Rolling in the Deep\", \"Rumor Has It\"]]]"
                           # p music_library[0].concat[0][1]
