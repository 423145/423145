# 1. Check if a Number is Even or Odd
read -p "Enter a number: " number
if (( number % 2 == 0 )); then
    echo "$number is Even"
else
    echo "$number is Odd"
fi



# 2. Check if a Year is a Leap Year
read -p "Enter a year: " year
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a Leap Year"
else
    echo "$year is not a Leap Year"
fi




# 3. Find the Factorial of a Number
read -p "Enter a number: " number
factorial=1
for (( i=1; i<=number; i++ )); do
    factorial=$((factorial * i))
done
echo "Factorial of $number is $factorial"




# 4. Swap Two Integers
read -p "Enter first integer: " a
read -p "Enter second integer: " b
echo "Before swapping: a = $a, b = $b"
temp=$a
a=$b
b=$temp
echo "After swapping: a = $a, b = $b"




# 5. Compute GCD & LCM of Two Numbers
read -p "Enter first number: " a
read -p "Enter second number: " b
gcd() {
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}
lcm() {
    echo $(( (a * b) / $(gcd) ))
}
gcd_value=$(gcd)
lcm_value=$(lcm)
echo "GCD of $a and $b is $gcd_value"
echo "LCM of $a and $b is $lcm_value"
