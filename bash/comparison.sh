# number
if [ "$a" -eq "$b" ]; then # a == b
fi

if [ "$a" -ne "$b" ]; then # a != b
fi

if [ "$a" -gt "$b" ]; then # a > b
fi

if [ "$a" -ge "$b" ]; then # a >= b
fi

if [ "$a" -lt "$b" ]; then # a < b
fi

if [ "$a" -le "$b" ]; then # a <= b
fi

# string
if [ -n "$s" ]; then # s not empty
fi

if [ -z "$s" ]; then # s is empty
fi

if [ "$s1" = "$s2" ]; then # s1 == s2
fi

if [ "$s1" != "$s2" ]; then # s1 != s2
fi

# file
if [ -d "$file" ]; then # file is directory
fi

if [ -e "$file" ]; then # file exists
fi

if [ -r "$file" ]; then # file readable
fi

if [ -s "$file" ]; then # file not empty
fi

if [ -w "$file" ]; then # file writable
fi

if [ -x "$file" ]; then # file executable
fi
