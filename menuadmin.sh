clear
echo
echo "1. Mostrar la lista de usuarios del sistema ordenada alfabeticamente"
echo "2. Mostrar fecha y hora"
echo "3. Crear un fichero con el contenido de /etc"
echo "4. Añadir a la agenda"
echo "5. Mostrar los nombres de la agenda"
echo "6. Mostrar los telefonos de la agenda"
echo "7. Mostrar las poblaciones de la agenda"
echo
echo "Elige la opcion (1,2,3,4)"
read opcion
case $opcion in
1) cut -f1 -d":" /etc/passwd|sort;;
2) date -R;;
3) ls /etc >> pepe;;
4) echo "Introduzca su nombre por favor"
read nombre
echo "Introduzca su edad por favor"
read edad
echo "Introduzca su poblacion por favor"
read pobla
echo "$nombre:$edad:$pobla">>agenda;;
5) cat agenda|cut -d":" -f1;;
6) cat agenda|cut -d":" -f2;;
7) cat agenda|cut -d":" -f4;;
*) echo "Opcion erronea";;
esac

