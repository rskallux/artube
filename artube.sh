#!/bin/bash
# artube
# Pesquisa videos youtube
# Autor: Reinaldo Skabello 
# web: https://terminalclub.github.io/
# Licença: GPL
# Nova versão: 2019 01:24:22 BRT
# --------------------------------------                                                                                                                          
############################
# var1
texto=$(
cat <<FECHA
 Tuberall .Pesquisa de videos do youtube via terminal.
 .================================. 
FECHA
)
 
# Imprimindo na telinha!
dialog --msgbox "$texto" 0 0
###########################
clear
echo "====================Pesquise videos,audio youtube ========================="                                                                                    
echo "O que você procura?" 
echo "|"
echo "V"
###################################                                                                                                       
####################################### pesquisando #####################3333
read vd ld ef rn np sk bl                                                                                                                                                 
wget https://www.youtube.com/results?search_query=$vd+$ld+$ef+$rn+$np+$sk+$bl -O all.html                                                                                                                                                
clear
echo -e "\033[0;32mPesquisando"
sleep 6
grep '<title>' all.html | sed 's/<[^>]*>//g' | sed 's/ - You.*//g' 
sleep 6
#######################################################
#Filtrando somente codigo watch -video -----------------------
grep -R  "watch?v=*" all.html > var.txt
#######################################################
#Limpando aquivo selecionado filtrando colunas que contem watch?v links-video ----------
cut -c77-95 var.txt > wat.txt
##########################################################
#Excluindo caracteres data -------------------------------------------------------
sed -i '/data/d' wat.txt
#########################################################
#Excluindo caracteres ><a 
sed -i '/><a/d' wat.txt 
########################################################
#Contatenando codigo do link com emdereço youtube
awk '{print "https://www.youtube.com/"$0}' wat.txt > canal.txt
#######################################################
echo "  Tuberall pesquisou "
#Contando quantidades de videos localizados
sed -n '$=' wat.txt
####################################
echo " Videos para voce assistir "
sleep 3
cat var.txt 
################### Print referência dos videos 
grep 'dir="ltr' all.html | sed 's/<[^>]*>//g' | sed 's/ - Duração:.*//g' > teste.txt
clear
echo -e "\033[0m======================Endereço dos videos======================="
echo -e "\033[0;32m"
cat canal.txt
echo -e "\033[0m =====================Referência dos videos ===================="
echo -e "\033[1;37m"
cat teste.txt
echo -e "\033[0m=================Use seu player favorito para assistir==========="
sleep 2
exit
 #...
        # ...
    

   "s")


# ...
# ...           
    ;;

    *)
        echo  "====================."
    ;;
esac		
	done			





