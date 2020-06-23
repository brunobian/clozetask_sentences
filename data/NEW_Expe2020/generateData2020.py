import csv
import os

Cuent = []
Cont = []
with open('cuentos_filtrados.csv', newline='') as cuentos:
    for row in csv.reader(cuentos):
        Cuent.append(row[0])
#print(Cuent)

with open('control.csv', newline='') as control:
    for row in csv.reader(control):
        Cont.append(row[0])
#print(Cuent)

with open('textos.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    
    ind = 0
    name = 0
    for i in Cuent:
        if (ind % 15) == 0:
            name += 1
        string = [ind, 1, name, '<p>'+i+'</p>']
        writer.writerow(string)
        ind=ind+1

    for i in Cont:
        string = [ind, 0, 0, '<p>'+i+'</p>']
        writer.writerow(string)
        ind=ind+1
		

with open('exp.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    ind = 0
    for i in Cuent:
        nums = list(range(1,len(i.split())))
        lista = ';'.join(str(x) for x in nums)
        string = [ind, ind, "["+ lista +"]"]
        writer.writerow(string)
        ind=ind+1

    for i in Cont:
        nums = list(range(1,len(i.split())))
        lista = ';'.join(str(x) for x in nums)
        string = [ind, ind, "["+ lista +"]"]
        writer.writerow(string)
        ind=ind+1


with open('72listasdeexps.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    writer.writerow([x for x in range(0, len(Cuent+Cont))])




