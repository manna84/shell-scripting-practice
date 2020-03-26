#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.

echo "Hello, welcome to the calculator program"

# When the operation is complete, redisplay the menu.

while true; do

  # Then, display a menu that outlines the possible operations:
    # Add
    # Subtract
    # Exit

  echo "Please make a selection below:"
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Exit"

  # Then, capture the user selection.

  read selection

  # If the selection matches a supported operation, execute the operation.

  case $selection in
      "Add" | "1")
        echo "Please provide first number"
        read first_number
        echo "Please provide second number"
        read second_number
        echo "The sum of $first_number and $second_number is:"
        expr $first_number + $second_number
      ;;

      "Subtract" | "2")
        echo "Please provide first number"
        read first_number
        echo "Please provide second number"
        read second_number
        echo "The difference of $first_number and $second_number is:"
        expr $first_number - $second_number
      ;;

      "Multiply" | "3")
        echo "Please provide first number"
        read first_number
        echo "Please provide second number"
        read second_number
        echo "The multiplication of $first_number and $second_number is:"
        expr $first_number \* $second_number
      ;;

      "Divide" | "4")
        echo "Please provide first number"
        read first_number
        echo "Please provide second number"
        read second_number
        echo "The division of $first_number and $second_number is:"
        expr $first_number / $second_number
      ;;

      "Exit" | "5")
        echo "Please come again. Goodbye!"
        exit 0
      ;;

  # If the selection does not match a support operation, display an error message.
  
      *)
        echo "Unsupported operation: $selection"
        echo "Please try again"
      ;;
  esac
done

