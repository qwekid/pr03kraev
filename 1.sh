echo "------Задание 1------"
num=$RANDOM
if ((num % 2 == 0));
then echo -e "\033[1;31mЧисло $random_number четное\033[0m"
else echo -e "\033[34mЧисло $random_number нечетное\033[0m"
fi

echo "------Задание 2------"
#проверяем наличие файла /etc/passwd
if [ -f "/etc/passwd" ]; 
then echo -e "\033[0;32mФайл /etc/passwd уже существует\033[0m"
else echo "Создание файла /etc/passwd"
mkpasswd -l > /etc/passwd
fi
#проверяем наличие файла /etc/group
if [ -f "/etc/group" ];
then echo -e "\033[0;32mФайл /etc/group уже существует\033[0m"
else echo "Создание файла /etc/group" 
mkgroup -l > /etc/group
fi
#выводим последнюю строку файла /etc/passwd
echo -e "\033[0;33mПоследняя строка файла /etc/passwd:\033[0m"
tail -n 1 /etc/passwd
#выводим последнюю строку файла /etc/group
echo -e "\033[0;33mПоследняя строка файла /etc/group:\033[0m"
tail -n 1 /etc/group

echo "------Задание 3------"
#проверяем наличие папки 
if [ ! -d "Folder1" ];
then echo "Создание"
mkdir Folder1
fi
#переходим в папку 
cd Folder1
#создаем файлы 
for i in {0..9};
do touch "file$i.exe"
done
#даем права на исполнение 
chmod +x *.exe
echo "содержимое папки"
ls
cd -

echo "------Задание 4------"
#переходим в папку
cd Folder1
#проверяем количество файлов
file_count=$(ls -1 | wc -l)
if [ $file_count -gt 7 ];
then 
#проверяем наличие и исполняемость файла file0.exe
if [ -x "file0.exe" ];
then echo -e "\e[34mФайл исполняемый и существует\e[0m"
else echo -e "\e[31mОТСУТСТВУЕТ\e[0m"
fi
else echo -e "\e[31mОТСУТСТВУЕТ\e[0m"
fi
