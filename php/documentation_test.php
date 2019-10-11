<?php

// Just testing features off the documentation

function println($var)
{
		echo "<br/>" . $var . "</br>";
}

//-------------------- Ouptput

?>

<?= "Testing short open tags, they should work in ALL new PHP versions, regardless of the settings used</br></br>" ?>

<?php

//----------- FUNCTIONS -------------//

# We can call a function "before" defining it. That's because PHP first parses the file and then executes it.

sum(1, 2);

function sum($v1, $v2)
{
		return $v1 + $v2;
}

$string[1] = '';
$float = 3.43;

$string = $float;

println($string); // Result is 3.43

$foo = 5 * "10 Little Piggies"; // $foo is integer (50)
$foo = 5 * "10 Small Pigs";     // $foo is integer (50)

println("Multiplying numerical variables with strings beginning with numerical values results in a numerical return value, however it throws a warning Notice: A non well formed numeric value encountered</br>");

# Binary in PHP
println(0b1011); // 11

# Octal in PHP
println(0123); // 83

# Hex in PHP
println(0x1b); // 27

# PHP built in constant
println("PHP integer size: " . PHP_INT_SIZE);

println('Testing newline character in single quotes:\n');
println("Testing newline character in double quotes:\n");

$name = 'Ivan';

// Testing an anonymous object
$me = (object) ['name'=>$name, 'lastname'=>'Ivković'];