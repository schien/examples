# if .. elif .. else
if [ <some test> ] && [ <some test> ]
then
<commands>
elif [ <some test> ] || [ <some test> ]
then
<different commands>
else
<other commands>
fi

# switch case
case <variable> in
<pattern 1>)
<commands>
;;
<pattern 2>)
<other commands>
;;
esac

# while loop
while [ <some test> ]
do
<commands>
done

# until loop
until [ <some test> ]
do
<commands>
done

# for loop
for var in <list>
# for value in {1..5}
# for value in {10..0..2}
# for value in $1/*.html
do
<commands>
done


