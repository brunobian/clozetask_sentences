import pandas as pd

# Cargo las oraciones de los cuentos y las oraciones control
cuentos   = pd.read_csv('cuentos_filtrados_Orig.tsv', sep='\t')
controles = pd.read_csv('cuentos_filtrados_Orig.tsv', sep='\t')

# Las pongo todas en un solo DF
todas = pd.concat([cuentos, controles])
todas = todas.reset_index()

# selecciono solo las columnas que me interesan para textos.csv
csv_final = todas[['Tipo', 'Cuento','Oracion']]
# A la columna de oracion la formateo para html 
csv_final['Oracion'] = "'<p>" + csv_final['Oracion'].astype(str) + "</p>'"
csv_final.to_csv('textos.csv', header = False)

# Como pandas me guarda con comillas que no quiero, las elimino
with open('textos.csv', 'r') as infile:
	    data = infile.read()
	    data = data.replace('"', "")
with open('textos.csv', 'w') as outfile:	 
	    outfile.write(data)
	    
# genero exp.csv
oraciones = todas['Oracion']
missing_words = []
for i in oraciones:
    nums = list(range(1,len(i.split())))
    lista = ';'.join(str(x) for x in nums)
    string = "["+ lista +"]"
    missing_words.append(string)

ids = list(todas.index)

exp = pd.DataFrame(list(zip(ids, missing_words)))
exp.to_csv('exp.csv', header = False)

# genero 72listasdeexps.csv
with open('72listasdeexps.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    writer.writerow([x for x in range(0, len(oraciones))])

