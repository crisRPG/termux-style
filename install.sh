#!/bin/bash


random(){
    f=teste.sh
    echo 'usuario=$(whoami)' > $f
    echo 'usx=$usuario' >> $f
    echo  'cor=38' >> $f
    echo 'n1=$(shuf -i 30-36 -n 1)' >> $f
    echo 'n2=$(shuf -i 32-36 -n 1)' >> $f
    echo 'n3=$(shuf -i 0-7 -n 1)' >> $f
    echo "bk=( ★ ◆ ⎊ ❖ ⌘ ✚ ∆ ‣)" >> $f
    echo 'xp=${bk[$n3]}' >> $f
    echo "PS1='\033[01;"'${n2}'"m"'$xp'" \033[01;"'${n1}'"m\]"'$usx'"\[\033[00m\]\[\033[01;"'${n2}'"m\]\w\[\033[00m\]$ '" >> $f

}


person(){

#simbolo = $usim
#cor Simbolo = $ucor
#cor nome usuario = $unamx

    f=teste.sh
    echo 'usuario=$(whoami)' > $f
    echo 'usx=$usuario' >> $f
    echo "PS1='\033[01;"'${ucor}'"m"'$usim'" \033[01;"'${unamx}'"m\]"'$usx'"\[\033[00m\]\[\033[01;"'${n2}'"m\]\w\[\033[00m\]$ '" >> $f

}


write(){

echo "ESCOLHA O NÚMERO DO SÍMBOLO"
simbolos=( ★ ◆ ⎊ ❖ ⌘ ✚ ∆ ‣)
cont=0

for sim in "${simbolos[@]}"
do
  echo "$cont $sim"
  ((cont++))
done  
read nSimb
usim=${simbolos[$nSimb]}
echo $usim


echo "ESCOLHA O NÚMERO DA COR DO SÍMBOLO"
ccx="\e[91mHello\e[0m"

cores=(30 31 32 33 34 35 36 37 90 91 92 93 94 95 96 97)
cont2=0
corcode="\e[33m◆\e[0m"

for cor in "${cores[@]}"
do
  echo -e "$cont2 \e[${cor}m${usim} Pasta/subpasta\e[0m"
  ((cont2++))
done  
read nCor
ucor=${cores[$nCor]}

echo $ucor


echo ; echo "DIGITE UM NOME DE USUÁRIO DE TESTE"
read usname

echo "ESCOLHA O NÚMERO DA COR DO NOME DE USUÁRIO"

#ccx="\e[91mHello\e[0m"

cores2=(30 31 32 33 34 35 36 37 90 91 92 93 94 95 96 97)
cont3=0
#corcode="\e[33m◆\e[0m"

for cor2 in "${cores2[@]}"
do
  echo -e "$cont3 \e[${cor2}m${usname} \e[0m"
  ((cont3++))
done  
read nUname
unamx=${cores2[$nUname]}


    f=teste.sh
    echo 'usuario=$(whoami)' > $f
    echo 'usx=$usuario' >> $f
    echo "PS1='\033[01;"${ucor}"m"$usim" \033[01;"${unamx}"m\]"GABI"\[\033[00m\]\[\033[01;"${ucor}"m\]\w\[\033[00m\]$ '" >> $f



}

#simbolo = $usim
#cor Simbolo = $ucor
#cor nome usuario = $unamx







echo "ESCOLHA A OPÇÃO PELO NÚMERO"
echo "1 - CORES E CARACTERES ALEATÓRIOS [ALL RANDOM]"
echo "2 - PERSONALIZAR"
read esc

if [ $esc = 1 ] ; then
  echo 'ALEATÓRIO'
  random
else
  echo 'PERSONALIZAR'
  write

fi  



echo "DESEJA APLICAR"
echo "1 - ATÉ ENCERRAR A SESSÃO"
echo "2 - PERMANENTEMENTE"
echo "3 - RESTAURAR TEMA ORIGINAL"
read modo

if [ $modo = 1 ] ; then
  source teste.sh
elif [ $modo = 2 ] ; then
  cp .bashrc .bashrc.pkp \
  mv teste.sh .bashrc \
  source .bashrc
elif [ $modo = 3 ] ; then
  mv .bashrc.bkp .bashrc  \
  source .bashrc
else
  echo "OPÇÃO INVÁLIDA"
  echo
fi    
#mv ./teste.sh .bashrc2

