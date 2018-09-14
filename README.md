Multidimensional Arrays
Objectives
Create nested, or multidimensional, arrays.
Read data from a nested array.
Write data to a nested array.
Iterate over a nested array.
What is a Nested Array?
An array is like a list but in code form. It is a way for your program to store pieces of data as a collection. Arrays can contain any combination of Ruby data types -- booleans, integers, strings, or even other collections in the form of nested arrays and hashes.

Arrays are declared as a comma-separated list of variable names or literal values wrapped in square brackets. For example:

students = ["Mike", "Tim", "Monique"]
We know that arrays can contain any type of data, including other arrays. Let's see that in action:

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B Average"]
]
A nested, or multidimensional array, is an array whose individual elements are also arrays.

Why Use a Nested Array?
Nested arrays are useful for storing groups of similar data. One example of nested array usage comes to us from the Google Maps API. Google Maps provides a JavaScript function that you, the developer, can use to add Google Maps to your own website. Don't worry about JavaScript right now; just understand that a JavaScript function is like a Ruby method.

The map-making function (or method, as we're going to think of it) was designed to take in an argument of a nested array -- an array in which each index element is an array containing a place name, latitude, and longitude. In other words, something that looks like this:

location_array =  [
  ["The Flatiron School", 40.705329, -74.013970],
  ["Disney World", 28.385233, -81.563874]
]
Reading and Writing with Nested Arrays
Accessing Data from a Nested Array
To access data from and add data to (i.e., "read and write") a nested array, we use the same methods we've been using to deal with one-dimensional arrays.

Let's stick with our students and nested_students arrays for now. To grab an element out of the students array, we use bracket notation plus the index number of the element we want.

students = ["Mike", "Tim", "Monique"]
students[0] #=> "Mike"
To access the same value, "Mike", from our nested_students array, we double up on bracket notation to drill down into the second, nested level of the array:

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average"]
]

nested_students[0][0] #=> "Mike"
The first set of brackets refers to the top level of the nested_students array -- the array containing our three nested arrays.

nested_students[0] #=> ["Mike", "Grade 10", "A average"]
We can see that the return value of nested_students[0] is the element at index 0 of the nested_students array. The returned element is an array that looks like this:

["Mike", "Grade 10", "A average"]
If you set the return value of calling nested_students[0] equal to a variable, we can then operate on it with further bracket notation:

mike = nested_students[0]
mike[0] #=> "Mike"
The syntax that we used earlier -- nested_students[0][0] -- is simply the chaining of method calls. We are calling the [0] method on the value returned by nested_students[0].

Let's try a different example. This time, let's write a line of code that returns the grade level of the last student in the nested_students array. Give it a shot in IRB before reading on.

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average"]
]

nested_students[2][1] #=> "Grade 11"
First, we are accessing the element at index 2 of the nested_students array, ["Monique", "Grade 11", "B average"]. That element happens to be an array with three elements, the second of which (the element at index 1) is the grade level of the student. So nested_students[2] grabs us the array that describes the last student in the list and chaining on [1] grabs the value of the element at index 1 of that array -- the string "Grade 11".

Now that we are getting comfortable retrieving data from a nested array, let's work on adding data to such an array.

Adding Data to a Nested Array
To add data to a nested array, we can use the same <<, or shovel, method we use to add data to a one-dimensional array.

To add another student to our students array:

students = ["Mike", "Tim", "Monique"]
students << "Sarah"
students #=> ["Mike", "Tim", "Monique", "Sarah"]
To add an element to an array that is nested inside of another array, we first use the same bracket notation as above to dig down to the nested array, and then we can use the << on it. To illustrate, let's add another piece of info, "Class President", to the nested array that describes Monique.

First, we have to access Monique's array.

nested_students[2]
Then -- bam! -- we hit it with the shovel, <<.

nested_students[2] << "Class President"
Now, our nested_students array looks like this:

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average", "Class President"]
]
Iterating Over Nested Arrays
What if we want to add data to every array that is nested within the parent array? It would be very tedious if we had to calculate the length of the array and then, one-by-one, modify each individual child array using bracket notation and the << method.

When we are dealing with a one-dimensional array and want to do something to every element, we iterate, using methods like #each and #collect. If, for example, we wanted to puts out every member of the students array, we could do so like this:

students.each do |student|
  puts student
end
In order to manipulate or operate on each element of a nested array, we must first dig down into that level of the array. For example, run the following code in IRB:

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average", "Class President"]
]

nested_students.each do |student_array|
  # #inspect returns a human-readable representation
  # of the array
  puts student_array.inspect
end
The .each method prints out each nested array separately and then returns the original array:

["Mike", "Grade 10", "A average"]
["Tim", "Grade 10", "C average"]
["Monique", "Grade 11", "B average", "Class President"]
#  => [["Mike", "Grade 10", "A average"], ["Tim", "Grade 10", "C average"], ["Monique", "Grade 11", "B average", "Class President"]]
In the example above, we are iterating through the list of arrays that make up the top level of the nested_students array. If we want to iterate through the elements inside each child array, we add a second layer of iteration inside the first:

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average", "Class President"]
]

nested_students.each do |student_array|
  student_array.each do |student_detail|
    puts student_detail
  end
end
Copy and paste the above code into IRB. You should see the following output:

Mike
Grade 10
A average
Tim
Grade 10
C average
Monique
Grade 11
B average
Class President
More Nested Arrays
Let's take a look at some multidimensional arrays that have an even deeper nesting structure than the 2D examples we've seen so far.

very_nested_array = [
  ["this", "is", "the", "first", "child", ["this", "is", "the", "grandchild"]],
  ["now", "we're", "back", "in", "the", "second", "level", ["now", "we're", "back", "in", "the", "grandchild", "level"]]
]
In this array, we have the top-level, or parent array, containing two child arrays. The array that is the first element of this parent array (accessed via very_nested_array[0]) contains six elements, the last of which (accessed via very_nested_array[0][5]) is yet another array. The array that is the second element of the parent array contains eight elements, the last of which is another third-level array. Here, we have three levels of nesting.

When to Use a Multidimensional Array
Multidimensional arrays, like the deeply nested one above, are useful for storing hierarchical data. Any collection of information that you can picture like a tree is a good candidate for a nested array.

Let's take, for example, a music library. There are artists (top level) who created albums (second level) that contain songs (third level). You can visualize the structure like this:

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
