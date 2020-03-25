#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.

echo "Hello, welcome to the calculator program"

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit

echo "Please make a selection below:"
echo "Add"
echo "Subtract"
echo "Exit"

# Then, capture the user selection.

read selection

# If the selection matches a supported operation, execute the operation.

case $selection in
    "Add")
    echo "Please provide first number"
    read first_number
     echo "Please provide second number"
    read second_number
    echo "The sum of $first_number and $second_number is:"
    expr $first_number + $second_number
    ;;

    "Subtract")
    echo "User selected 'Subtract'"
    ;;

    "Exit")
    echo "User selected 'Exit'"
    ;;

# If the selection does not match a support operation, display an error message.

    *)
    echo "Unsupported operation: $selection"
    echo "Please try again"
    ;;
esac

# When the operation is complete, redisplay the menu.
