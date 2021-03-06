#!/usr/bin/env python3

import psycopg2
import io
f = io.open('textos.csv', encoding='latin-1')

#f = open('textos.csv','r')

database='oraciones_2020_new'
host='localhost'
user='cloze'
password='23571113'
connectStr="dbname='"+database+"' user='"+user+"' host='"+host+"' password='"+password+"'"

conn = psycopg2.connect(connectStr)
cur = conn.cursor()

db_text = []
for l in f.readlines():
    sl = l.split(',',3)
    id = int(sl[0])
    textnum = int(sl[1])
    textclass = int(sl[2])
    #text = unicode(sl[3][0:-1],'iso-8859-15')
    text = sl[3][0:-1]
    #print id, textnum, textclass, text
    
    db_text.append((id,textnum,textclass,text))

for i in db_text:
	print(i[0])
cur.executemany('INSERT INTO cloze_text  VALUES (%s,%s,%s,%s)',db_text)
conn.commit()
f.close()
cur = conn.cursor()

f = open('exp.csv','r')
db_exp = []
for l in f.readlines():
    sl = l.split(',',3)
    id = int(sl[0])
    text_id = int(sl[1])
    missing = sl[2].replace(';',',')[0:-1]
    print (id, text_id, missing)
    
    db_exp.append((id,text_id,missing))
    
cur.executemany('INSERT INTO cloze_trialoption (id, text_id, missing_words) VALUES (%s,%s,%s)',db_exp)
conn.commit()
f.close()
cur = conn.cursor()

f = open('72listasdeexps.csv','r')
db_seq = []
for l in f.readlines():
    
    db_seq.append(('[' + l.strip() + ']',))

print(db_seq)
cur.executemany('INSERT INTO cloze_trialsequence (seq) VALUES (%s)',db_seq)
conn.commit()

