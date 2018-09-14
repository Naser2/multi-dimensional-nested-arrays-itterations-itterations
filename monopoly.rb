def new_hash
  #create a new Hash
{}
end

def actor
  #instantiating a hash with ONE key-value pair key: :name value: Dwayne...
actor = {:name => 'Dwayne The Rock Johnson'}
end

def monopoly

  	#copy and paste the monopoly hash you built in the previous method. We're going to add stuff to it here!
	monopoly = {}
	monopoly[:railroads] = {}
  monopoly

end

def monopoly_with_second_tier
#   	#copy and paste the monopoly hash you built in the previous method. We're going to add stuff to it here!
  monopoly = {}
	monopoly[:railroads] = { }
  monopoly[:railroads] = { :pieces => 4 }
  monopoly[:railroads ][:names] = { }
  monopoly[:railroads][:rent_in_dollars] = { }
     #0R
    monopoly = {
    railroads: {
      pieces: 4,
      names: {},
      rent_in_dollars: {}
    }
  }

  monopoly
end

def monopoly_with_third_tier
	#copy and paste the monopoly hash you built in the previous method. We're going to add stuff to it here!
	monopoly = {}
	monopoly[:railroads] = { }
  monopoly[:railroads] = { :pieces => 4 }
  monopoly[:railroads ][:names] = {   }
  monopoly[:railroads][:rent_in_dollars] = { }
  monopoly[:railroads][:rent_in_dollars] = { :one_piece_owned  => 25 }
  monopoly[:railroads][:rent_in_dollars][:two_pieces_owned] =     50.to_i
  monopoly[:railroads][:rent_in_dollars][:four_pieces_owned] =  200.to_i
 adding without equal
  #Without Operator
  monopoly = {
    railroads: {
      pieces: 4,
      names: {
        :reading_railroad => {},
        :pennsylvania_railroad => {},
        :b_and_o_railroad => {},
        :shortline => {}
      },
      rent_in_dollars: {
        :one_piece_owned => 25,
        :two_pieces_owned => 50,
        :three_pieces_owned => 100,
        :four_pieces_owned => 200
      }
    }
  }
  monopoly
end

def monopoly_with_fourth_tier
  #copy and past the monopoly hash you build in the previous method. We're going to add stuff to it here!
  monopoly = {
    railroads: {
      pieces: 4,
      names: {
        :reading_railroad => {
          "mortgage_value" => "$100"
          },
        :pennsylvania_railroad => {
          "mortgage_value" => "$200"
          },
          :b_and_o_railroad => {
            "mortgage_value" => "$400"
          },
          :shortline => {
            "mortgage_value" => "$800"
          }
      },
      rent_in_dollars: {
        :one_piece_owned => 25,
        :two_pieces_owned => 50,
        :three_pieces_owned => 100,
        :four_pieces_owned => 200
      }
    }
  }
end


      # GUIDE
      # 	monopoly = {}
      # 	monopoly[:railroads] = { }
      #   monopoly[:railroads] = { :pieces => 4 }
      #   monopoly[:railroads ][:names] = {   }
      #   monopoly[:railroads][:rent_in_dollars] = { }
      #   monopoly[:railroads][:rent_in_dollars] = { :one_piece_owned  => 25 }
      #   monopoly[:railroads][:rent_in_dollars][:two_pieces_owned] =     50.to_i
      #   monopoly[:railroads][:rent_in_dollars][:four_pieces_owned] =  200.to_i
      #  adding without equal

      #   monopoly = {
      #     railroads: {
      #       pieces: 4,
      #       names: {
      #         :reading_railroad => {},
      #         :pennsylvania_railroad => {},
      #         :b_and_o_railroad => {},
      #         :shortline => {}
      #       },
      #       rent_in_dollars: {
      #         :one_piece_owned => 25,
      #         :two_pieces_owned => 50,
      #         :three_pieces_owned => 100,
      #         :four_pieces_owned => 200
      #       }
      #     }
      #   }
      #   monopoly
      # end



      # adding key-value pairs to the third level of the monopoly hash that we continued building in the #monopoly_with_second_tier method
          #monopoly_with_third_tier
        #     sets the 1st key of the :rent_in_dollars hash to a symbol, :one_piece_owned, whose value is the integer 25 (FAILED - 1)
        #     sets the 2nd key of the :rent_in_dollars hash to a symbol, :two_pieces_owned, whose value is the integer 50 (FAILED - 2)
        #     sets the 3rd key of the :rent_in_dollars hash to a symbol, :three_pieces_owned, whose value is the integer 100 (FAILED - 3)
        #     sets the 4th key of the :rent_in_dollars hash to a symbol, :four_pieces_owned, whose value is the integer 200 (FAILED - 4)
        #     sets the 1st key of the :names hash to a symbol, :reading_railroad, whosevalue is an empty hash (FAILED - 5)
        #     sets the 2nd key of the :names hash to a symbol, :pennsylvania_railroad, whose value is an empty hash (FAILED - 6)
        #     sets the 3rd key of the :names hash to a symbol, :b_and_o_railroad, whosevalue is an empty hash (FAILED - 7)
        #     sets the 4th key of the :names hash to a symbol, :shortline, whose value is an empty hash (FAILED - 8)
        # fourth level of monopoly hash
          #monopoly_with_fourth_tier
            # sets the 1st key of the :reading_railroad hash to a string, 'mortgage_value', whose value is '$100' (FAILED - 9)
            # sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is '$200' (FAILED - 10)
            # sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is '$400' (FAILED - 11)
            # sets the 1st key of the :shortline hash to a string, `mortgage_value`, whose value is '$800' (FAILED - 12)
