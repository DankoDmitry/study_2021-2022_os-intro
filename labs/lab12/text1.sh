t=$1+1
while ((t-=1))
do
    echo wait
    sleep 1
done
t=$2+1
while ((t-=1))
do
    echo do
    sleep 1
done


