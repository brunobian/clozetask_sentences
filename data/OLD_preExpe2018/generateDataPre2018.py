import csv

Prov=['¡Coronados de gloria vivamos, o juremos con gloria morir!','¡Felices pascuas! la casa está en orden','¿A papá mono con bananas verdes?','¿De qué planeta viniste, barrilete cósmico?','¿Qué gusto tiene la sal?','¿Quién te dio vela en este entierro?','A las palabras se las lleva el viento','Cayó piedra sin llover','Chancho limpio nunca engorda.','Cocodrilo que se duerme es cartera','Como te ven te tratan, si te ven mal te maltratan','Como te ven te tratan. Si te ven mal, te maltratan.','Con un mano atrás y otra adelante.','Cortito como patada de chancho.','Cuando el gato no está, los ratones hacen fiesta.','Cuando la limosna es grande hasta el santo desconfía.','Cuatro ojos ven más que dos.','De noche todos los gatos son pardos.','Del dicho al hecho hay un largo trecho.','Dicen que soy aburrido','Dicen que soy aburrido','Dios los cría y el viento los amontona','Disfrutá cada día como si fuera el último.','Donde hay hambre no hay pan duro.','Donde hubo fuego cenizas quedan','Donde pone el ojo pone la bala.','Dos son compañía, tres son multitud.','El q se fue a sevilla perdio su silla','El que come y no convida tiene un sapo en la barriga.','El que deposito dólares recibirá dolares','El que este libre de pecado que tire la primera piedra','El que mucho abarca poco aprieta.','El que no arriesga no gana','El que no llora no mama','El que se quema con leche, ve una vaca y llora.','El que se va sin que lo echen vuelve sin que lo llamen.','Es pan para hoy y hambre para mañana','Gato con guantes no caza ratones.','Gracias a la vida que me ha dado tanto','Hecha la ley, hecha la trampa','La boca se te haga a un lado','La casa es chica pero el corazón es grande.','La culpa no es del chancho sino de quien le da de comer.','La mentira tiene patas cortas.','La venganza en un plato que se sirve frio','Le busca la quinta pata al gato','Los hermanos sean unidos, porque esa es la ley primera','Más vale maña que fuerza.','Más vale morir de pie que vivir de rodillas.','Más vale solo que mal acompañado.','Me extraña araña que siendo mosca no me conozcas','No desearás la mujer de tu prójimo','No hay mal que dure cien años','No hay peor sordo que el que no quiere oír','No le eches mas leña al fuego','Pan con pan, comida de sonsos.','Panza llena, corazón contento.','Pibe cantina, de qué te la das','Quien mal anda mal acaba.','Se quedó sin el pan y sin la torta.','Seras lo que debas ser o no serás nada','Si hay miseria que no se note','Si te gusta el durazno, bancate la pelusa','Síganme, que no los voy a defraudar.','Ya vas a venir con el caballo cansado','Yerba mala nunca muere','Yo me equivoqué y pagué, pero la pelota no se mancha']
Cont=['A Rómulo y a Remo los alimentó una loba.','El corazón es un músculo que bombea sangre.','Si quieres resultados distintos no hagas siempre lo mismo.','San Martín cruzó los Andes a caballo.','Alemania perdió la segunda guerra mundial.','No desearás a la mujer de tu prójimo.','Lucifer es uno de los nombres del diablo.','El fumar es perjudicial para la salud.','Las cosas se hacen bien o no se hacen.','No te des por vencido ni aún vencido.','A Pinocho le crecía la nariz cada vez que mentía.','No hagas promesas que no puedas cumplir.','En el tambo ordeñan a las vacas.','Aquiles luchó en la Guerra de Troya.','Hoy es noche buena y mañana navidad.','Ser o no ser, ésa es la cuestión.','El Rey Arturo y los caballeros de la mesa redonda.','Ganarás el pan con el sudor de tu frente.','Los ateos no creen en Dios.','El hombre es un animal racional.','Ante la duda consulte a su médico.','El gato atrapó muchos ratones.','El perro enterró un hueso en el patio.','El oro es un metal muy codiciado.','La Pampa tiene el ombú y los Andes la cordillera.','El mago hizo trucos con cartas.','En Alemania tiraron el muro de Berlín.','Hasta aquí llegó mi amor.','En el horno de la panadería cocinan el pan.','Quién se ha tomado todo el vino.','Los Reyes Magos dejaron regalos para los niños.','El que esté libre de pecado que tire la primer piedra.','Los amigos lo acompañaron en ese momento.','En Londres el clima es muy húmedo.','Laura me recomendó consultar urgente al médico.','El destino volvió a unir a los amigos.','Juan tiene muy poca visión en ambos ojos.','La discusión de ayer era inevitable.','En su casa siempre hacen comidas muy elaboradas.','Tanto insistió con eso que al final se lo dieron.','Los hijos de Juan estudiaron durante las vacaciones.','El patrón le ordenó a la criada callarse.','Este año iremos de vacaciones a la montaña.','A Mario le gusta ver cine los domingos.','Los niños se asustaron cuando vieron a los leones.','La picadura de ciertas arañas puede ser mortal.','El mate es originario de la Argentina.','En la casa de Juan no hay animales.','La película terminó de forma extraña.','En Alaska las temperaturas son muy bajas.','En el tribunal la votación fue reñida.','Algunos días el cielo está todo estrellado.','No fueron claras las cuentas de la empresa.','A las hojas las amontona el viento.','A Luis no lo engañan con ese viejo truco.','A Miguel le entregaron ayer el auto nuevo.','María nunca ha hecho llorar a sus padres.','Gustavo encontró una billetera tirada en el bar.','Luis visitó el mes pasado a unos parientes de Europa.','Daniel preparó café para sus amigos.','Jorge consiguió una beca para estudiar en la universidad.','El hermano de Martín es un médico muy prestigioso.','La madre de Mariela es una muy buena repostera.','Durante la noche algunos felinos salen a cazar.','Juan no anda bien con su pareja.','DArtagnan era amigo de los tres mosqueteros.','La casa de Martín tiene un parque muy grande.','Elisa nunca supo cómo resolver el problema.','Los loros comieron la plantación de maíz.','Javier tiene amigos que son muy raros.','El arco iris se forma luego de la lluvia.','Él se encontró con María el otro día.','Luis miró todo el partido de fútbol.','Ayer charlamos con Laura sobre su hija.','Cada lengua del mundo posee una gramática.']



with open('textos.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    
    ind = 0
    for i in Prov:
        string = [ind, 1, 0, "'<p>"+i+"</p>'"]
        writer.writerow(string)
        ind=ind+1

    for i in Cont:
        string = [ind, 2, 0, "'<p>"+i+"</p>'"]
        writer.writerow(string)
        ind=ind+1
		

with open('exp.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.writer(csv_file, delimiter=',')
    
    ind = 0
    for i in Prov:
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
    writer.writerow([x for x in range(0, len(Prov+Cont))])




