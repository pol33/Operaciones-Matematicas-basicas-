#!/bin/bash
# vendria a hacer un metodo!
nuevo(){
read -p 'Precione 1 para hacer otra operacion: ' nu #lee un numero en pantalla donde (nu) es una variable
if [[ $nu == 1 ]]; then
clear
menu #llamando al metodo menu()
else 
echo "Adios, que vuelva pronto :)!"
sleep 2
exit
fi #fin si
}

#otro metodo
banner() {

printf "\e[1;77m   ____                       __  __       _                 _  \e[0m\n"
printf "\e[1;77m  / __ \                     |  \/  |     | |               | | \e[0m\n"
printf "\e[1;77m | |  | |_ __   ___ _ __ __ _| \  / | __ _| |_ ___ _ __ ___ | | \e[0m\n"
printf "\e[1;77m | |  | | '_ \ / _ \ '__/ _' | |\/| |/ _' | __/ _ \ '_ ' _ \| | \e[0m\n"
printf "\e[1;77m | |__| | |_) |  __/ | | (_| | |  | | (_| | ||  __/ | | | | |_| \e[0m\n"
printf "\e[1;77m  \____/| .__/ \___|_|  \__,_|_|  |_|\__,_|\__\___|_| |_| |_(_) \e[0m\n"
printf "\e[1;77m        | |                                                     \e[0m\n"
printf "\e[1;77m        |_|                                                     v1\e[0m\n"
printf "\n"
printf "         \e[101m\e[1;77m.:.:. Operaciones Basicas Creado por: Mrvalem .:.:.\e[0m\n"
printf "\n"
}
#otro metodo
menu(){

printf "\e[1;92m[\e[0m\e[1;77m 01 \e[0m\e[1;92m]\e[0m\e[1;93m suma            \e[0m\e[1;92m[\e[0m\e[1;77m 02 \e[0m\e[1;92m]\e[0m\e[1;93m Division\n\e[0m\e[1;92m[\e[0m\e[1;77m 03 \e[0m\e[1;92m]\e[0m\e[1;93m Muliplicacion\e[0m"
printf "   \e[1;92m[\e[0m\e[1;77m 04 \e[0m\e[1;92m]\e[0m\e[1;93m Resta\n"
printf "\n"
read -p 'Elige una opcion: ' opcion

if [[ $opcion == 1 || $opcion == 01 ]]; then
    printf "***********************Suma************************\n"
    read -p 'Ingrese un numero: ' numero
    read -p 'Ingrese el siguiente numero: ' numero2
    resul=$((numero+numero2))
    echo "El resultafo es: "$resul
    nuevo #llamando al metodo nuevo()
    
    
elif [[ $opcion == 2 || $opcion == 02 ]]; then
    printf "***********************Division**********************\n"
    read -p 'Ingrese un numero: ' num
    read -p 'Ingrese un numero: ' num2
    resul2=$((num/num2))
    echo "El resultado es: "$resul2
    nuevo
        
elif [[ $opcion == 3 || $opcion == 03 ]]; then
    printf "***********************Multiplicacion**********************\n"
    read -p 'Ingrese un numero: ' nume
    read -p 'Ingrese un numero: ' nume2
    resul3=$((nume*nume2))
    echo "El resultado es: "$resul3
    nuevo
    
elif [[ $opcion == 4 || $opcion == 04 ]]; then
    printf "***********************Resta**********************\n"
    read -p 'Ingrese un numero: ' numer
    read -p 'Ingrese un numero: ' numer2
    resul4=$((numer-numer2))
    echo "El resultado es: "$resul4
    nuevo
    
else 
printf "error\n"
sleep 1
clear
menu #llamando al metodo menu
fi #fin si importante siempre poner!
}
#aqui es donde se ejecuta primero el metodo banner, luego el metodo menu. importante ya que si no pones esto no ejecutara el programa
banner
menu
