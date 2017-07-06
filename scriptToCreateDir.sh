#echo "program created by ,RamanG"

declare -a childDir=('ZCNV0010');

declare -a interfaceFIInboudChilds=('ZINB0014' 'ZINB0015' 'ZINB0016' 'ZINB0017' 'ZINB0018'
  'ZINB0036' 'ZINB0020' 'ZINB0027' 'ZINB0028' 'ZINB0022' 'ZINB0026' 'ZINB0027' 'ZINB0004' 'ZINB0005' 'ZINB0023' 'ZINB0003' 'ZINB0031'
  'ZINB0032' 'ZINB0034' 'ZINB0038' 'ZINB0009' 'ZINB0013' 'ZENH0019' 'ZENH0020' 'ZENH0022' 'ZENH0001' 'ZENH0007');

declare -a interfaceFIOutboudChilds=('ZOUT0006' 'ZOUT0014' 'ZOUT0017' 'ZOUT0016' 'ZOUT0021' 'ZOUT0002' 'ZOUT0003' 'ZOUT0004' 'ZOUT0011');

declare -a interfacePROutboudChilds=('ZOUT0018' 'ZOUT0019' 'ZOUT0020');

declare -a rootDir=('Interfaces/FI/Inbound' 'Interfaces/FI/Outbound' 'Conversions/FI'
  'Interfaces/PR/Outbound'
  'Interfaces/HR/Outbound/ZOUT0013'
  'Conversions/PR/Outbound'
  'Conversions/HR/ZCNV0010'
  );

declare -a conversionsFIchilds=('ZCNV0025' 'ZCNV0026' 'ZCNV0001' 'ZCNV0023' 'ZCNV0009' 'ZCNV0018' 'ZCNV0021' 'ZCNV0022' 'ZCNV0024' 'ZCNV0030'
'ZCNV0011' 'ZCNV0032' 'ZCNV0037' 'ZCNV0013' 'ZCNV0014' 'ZCNV0015' 'ZCNV0016' 'ZCNV0017' 'ZCNV0018' 'ZCNV0019' 'ZCNV0020' 'ZCNV0021');

declare -a conversionsPRchilds=('ZCNV0019' 'ZCNV0020' 'ZCNV0031');

declare -a childs=('/work' '/errorfile' '/archive');

#for creating all the root directories
i=0
while [ $i -lt ${#rootDir[@]} ]
  do
     echo ${rootDir[${i}]} "      --folder" $i
     mkdir -p ${rootDir[${i}]}
     i=`expr $i + 1`
  done

#for creating child of interfaces Outbound
j=0
while [ $j -lt ${#interfaceFIOutboudChilds[@]} ]
do
   echo ${interfaceFIOutboudChilds[${j}]} "      --folder" $j
   mkdir -p 'Interfaces/FI/Outbound/'${interfaceFIOutboudChilds[${j}]}
   k=0
   while [ $k -lt ${#childs[@]} ]
     do
       echo ${childs[${k}]}
       mkdir -p 'Interfaces/FI/Outbound/'${interfaceFIOutboudChilds[${j}]}${childs[${k}]}
       k=`expr $k + 1`
     done
   j=`expr $j + 1`
done

#for creating child of interfaces Outbound
m=0;
while [ $m -lt ${#interfaceFIInboudChilds[@]} ]
do
   echo ${interfaceFIInboudChilds[${m}]} "      --folder" $m
   mkdir -p 'Interfaces/FI/Inbound/'${interfaceFIInboudChilds[${m}]}
   k=0
   while [ $k -lt ${#childs[@]} ]
     do
       echo ${childs[${k}]}
       mkdir -p 'Interfaces/FI/Inbound/'${interfaceFIInboudChilds[${m}]}${childs[${k}]}
       k=`expr $k + 1`
     done
   m=`expr $m + 1`
done

#creating child of interfaces HR Outbound
i=0
while [ $i -lt ${#childs[@]} ]
  do
     echo ${childs[${i}]} "      --folder" $i
     mkdir -p 'Interfaces/HR/Outbound/ZOUT0013/'${childs[${i}]}
     i=`expr $i + 1`
  done

#creating childs of Interfaces PR Outbound
l=0
while [ $l -lt ${#interfacePROutboudChilds[@]} ]
do
   echo ${interfacePROutboudChilds[${l}]} "      --folder" $l
   mkdir -p 'Interfaces/PR/Outbound/'${interfacePROutboudChilds[${l}]}
   k=0
   while [ $k -lt ${#childs[@]} ]
     do
       echo ${childs[${k}]}
       mkdir -p 'Interfaces/PR/Outbound/'${interfacePROutboudChilds[${l}]}${childs[${k}]}
       k=`expr $k + 1`
     done
   l=`expr $l + 1`
done

#for creating childs of conversions FI childs
l=0
while [ $l -lt ${#conversionsFIchilds[@]} ]
do
   echo ${conversionsFIchilds[${l}]} "      --folder" $l
   mkdir -p 'Conversions/FI/'${conversionsFIchilds[${l}]}
   k=0
   while [ $k -lt ${#childs[@]} ]
     do
       echo ${childs[${k}]}
       mkdir -p 'Conversions/FI/'${conversionsFIchilds[${l}]}${childs[${k}]}
       k=`expr $k + 1`
     done
   l=`expr $l + 1`
done

#for creating childs of conversions PR
n=0
while [ $n -lt ${#conversionsPRchilds[@]} ]
do
   echo ${conversionsPRchilds[${n}]} "      --folder" $n
   mkdir -p 'Conversions/PR/Outbound/'${conversionsPRchilds[${n}]}
   k=0
   while [ $k -lt ${#childs[@]} ]
     do
       echo ${childs[${k}]}
       mkdir -p 'Conversions/PR/Outbound/'${conversionsPRchilds[${n}]}${childs[${k}]}
       k=`expr $k + 1`
     done
   n=`expr $n + 1`
done
