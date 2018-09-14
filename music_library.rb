music_library = [
  ["Adele",
    ["19",
      ["Day Dreamer", "Best for Last"]
    ],
    ["21",
      ["Rolling in the Deep", "Rumor Has It"]
    ]
  ],
  ["Beyonce",
    ["4",
      ["1 + 1", "Countdown"]
    ],
    ["Beyonce",
      ["Haunted", "Pretty Hurts"]
    ]
  ]
]
music_library.each do |artist_array|
    #p artist_array

              # ["Adele", ["19", ["Day Dreamer", "Best for Last"]], ["21", ["Rolling in the Deep", "Rumor Has It"]]]
              # ["Beyonce", ["4", ["1 + 1", "Countdown"]], ["Beyonce", ["Haunted", "Pretty Hurts"]]]
      artist_array.each do |artist_element|
        puts artist_element
              #   ["19", ["Day Dreamer", "Best for Last"]]
              #    ["21", ["Rolling in the Deep", "Rumor Has It"]]
              # ["4", ["1 + 1", "Countdown"]]
              # ["Beyonce", ["Haunted", "Pretty Hurts"]]
      if artist_element.class != Array # Check if the  artist_element is not an array, then format
        puts "Artist: #{artist_element}"
      else
       artist_element.each do |album_element|
              # => Artist: Beyonce
                    # ["4", ["1 + 1", "Countdown"]]
              # => Artist: ["4", ["1 + 1", "Countdown"]]
                    #["Beyonce", ["Haunted", "Pretty Hurts"]]
              #= >  Artist: ["Beyonce", ["Haunted", "Pretty Hurts"]]"]]
      if album_element.class != Array # Check if not an Array then format
         puts "Album: #{album_element}"
      else
         album_element.each do |song_element|
         puts "Song: #{song_element}"
              # song_element = album_element[0] = artist_element[1][0] = artist_array[1][1][0] = music_library[0][1][1][0] = "Day Dreamer"
              # puts  music_library[0][1][1][0] = #=> "Day Dreamer"
            end
         end
       end
    end
  end
end
