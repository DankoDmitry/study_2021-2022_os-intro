if [ -f /usr/shere/man/man1/$1.1.gz ]
then
    gunzip -c /usr/shere/man/man1/$1.1.gz | less
else
    echo "Стправки нет"
fi

    
