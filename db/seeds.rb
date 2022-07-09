puts 'creando works...'

User.destroy_all
User.create!([
          { email: 'maravoly@gmail.com', password: 12345678},
          { email: 'yilliam@gmail.com', password: 12345678}
    ])
Work.destroy_all

Work.create!(
    [
        {
            cargo:'Ingeniero de Control y Programación' ,
            cantidad_vacantes:1 ,
            description:"Requisitos:• 2 años de experiencia en posiciones similares, 2-3 años de trayectoria total. Título Profesional Ingeniería Industrial o Carrera A fin. Conocimientos Específicos en Microsoft, Power BI, Tableau, SAP o similar (Visualización de datos) Planificación, Supply Chain. Experiencia en Logística o Supply Chain. Capacidad Analítica, Visión Estratégica, Orientación a Resultados, Integración de Procesos, Capacidad de Adaptación, Metódico, Afinidad con uso de Tecnología y lenguaje digital, Capacidad de Liderazgo.", 
            modalidad:'presencial' , 
            release_date: '2022-08-05' ,
            rango_salarial:'$1.000.000 - $1.200.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },
        {        
            cargo:'Profesional en TIC' ,
            cantidad_vacantes:2 ,
            description:"Perfil deseado - Poseer título Profesional en TIC, Estadística, Matemáticas. - Poseer dominio en programación y manejo o análisis de datos. - Experiencia profesional de al menos 2 años (acreditable). Experiencia en docencia / capacitación (deseable)." ,
            modalidad:'remoto' ,
            release_date: '2022-08-05' ,
            rango_salarial: '$950.000 - $1.100.000' ,
            region: Region.find_by(name: 'Arica'),
            user:User.find_by(email: 'maravoly@gmail.com')
        },
        {        
            cargo:'Analista Programación Logística' ,
            cantidad_vacantes:3 ,
            description:"Funciones: -Analizar la demanda de clientes, con el propósito de estimar su demanda futura para así generar un programa de reposición que asegure el suministro oportuno. - Revisar demanda, y/o stocks diariamente. -Supervisar operación planificada para el día anterior. -Coordinar con transportistas planificación del día siguiente. -Mantener comunicación directa con el área comercial e informar cualquier dificultad en la operación. -Hacer seguimiento a cada pedido de entrega a puerto, en día y hora solicitada. -Mantener y mejorar todos los Reportes asignados a cada Analista al día.-Proponer cualquier mejora o reingeniería que se identifique en el área. -Levantar cualquier problema que afecten los resultados de la compañía." ,
            modalidad:'mixto' ,
            release_date: '2022-08-05' ,
            rango_salarial:'$750.000 - $850.000' ,
            region: Region.find_by(name: 'Arica'),
            user:User.find_by(email: 'maravoly@gmail.com') 
        },
        {        
            cargo:'TÉCNICO CONTROL Y PROGRAMACIÓN' ,
            cantidad_vacantes:1 ,
            description: "Perfil deseado - Formación: Técnico Superior, Ing. Ejecución - Conocimientos de: Manejo sistema operativo SAP. - Experiencia en: Técnico a nivel Superior con 4 años de experiencia." ,
            modalidad:'remoto' , 
            release_date: '2022-08-05' ,
            rango_salarial:'$680.000 - $830.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com') 
        },
        {        
            cargo:'PROGRAMACION Y CONTROL' ,
            cantidad_vacantes:2 ,
            description:"Perfil deseado, Requisitos Mínimos: - Ing. civil cualquier especialidad o Ing. Ejecución cualquier especialidad o Ingeniero Comercial o carrera afín. - Experiencia relevante y comprobable de al menos 6 años en Programación y Control en proyectos del rubro minero." ,
            modalidad:'remoto' ,
            release_date: '2022-08-05' ,
            rango_salarial:'$650.000 - $850.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com') 
        },
        {        
            cargo:'Programador Back End Java' ,
            cantidad_vacantes: 2 ,
            description:"Perfil deseado, Habilidades blandas-Ordenado-Autodidacta Herramientas que debe conocer-Jira, Git, SonarQube, Maven, EclipseConocimientos Deseables: -Apache CamelJava con contenedoresMetodología Ágil" ,
            modalidad:'remoto' ,
            release_date: '2022-08-05' ,
            rango_salarial:'$800.000 - $900.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com') 
        },
        {        
            cargo:'Consultor Junior para Tecnología' ,
            cantidad_vacantes:3 ,
            description:"Perfil deseado Para ser exitoso/a en el puesto es necesario:- Título de carrera universitaria. Ejemplo: Ingeniería Ejecución Informática, Ingeniería Civil Informática o carrera a fin. - Experiencia de 0 a 1 año trabajando en soluciones informáticas. - Interés en profundizar sus habilidades técnicas, dominio de lenguajes de programación python, c#, java, scala, ruby, javascript, Inglés Intermedio/Avanzado." ,
            modalidad:'remoto' ,
            release_date: '2022-08-05' ,
            rango_salarial:'$600.000 - $700.000' ,
            region: Region.find_by(name: 'Arica'),
            user:User.find_by(email: 'maravoly@gmail.com')
        },
        {        
            cargo:'Desarrolladores Backend' ,
            cantidad_vacantes:3 ,
            description:"Requisitos: - Poseer formación universitaria de carreras del área informática o afín- Poseer al menos 2 años de experiencia en el cargo- Java con Spring Boot- Servicios REST- MVC- Programación orientada a Objetos Java, C#, .net- Weblogic (deseable)" ,
            modalidad:'mixto' ,
            release_date: '2022-08-05' ,
            rango_salarial:'$780.00 - $890.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },
        {        
            cargo:'Programador' ,
            cantidad_vacantes:2 ,
            description:"Perfil deseado -Técnico en Análisis de sistema, o similar.-2 o más años de experiencia en cargos similares. -Manejo de sistemas operativos actualizados -Excluyente: conocimiento y/o experiencia en C#Net y SQL Server -Deseable experiencia en: ASPnet CORE, API CORE, Motor de integración MIRTH Connect. Conocimiento para diseño WEB Dinámicos: Bootstrap, HTML5, CSS3, Librerias Ajax, Jquery, JSON, XML, Apache, Control de versiones con GIT." ,
            modalidad:'remoto' ,
            release_date: '2022-08-05' ,
            rango_salarial: '$650.000 - $750.000' ,
            region: Region.find_by(name: 'Arica'),
            user: User.find_by(email: 'maravoly@gmail.com')
            
        }
    ]
)

puts 'creando regiones'

Region.destroy_all

Region.create([

    {region: 'Arica' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368034/images/examen/regiones/15_rr7lcp.png'},
    {region: 'Tarapacá' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368028/images/examen/regiones/1_uhzn2g.png'},
    {region: 'Antofagasta' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368028/images/examen/regiones/2_gemppa.png'},
    {region: 'Atacama' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/3_kqhpqi.png'},
    {region: 'Coquimbo' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368028/images/examen/regiones/4_pf0qdz.png'},
    {region: 'Valparaíso' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368028/images/examen/regiones/5_nibcdw.png'},
    {region: 'OHiggins' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368028/images/examen/regiones/6_kgcqom.png'},
    {region: 'El Maule' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368033/images/examen/regiones/7_e77ya8.png'},
    {region: 'Ñuble' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/16_ifqid9.png'},
    {region: 'Biobío' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368030/images/examen/regiones/8_nsfykn.png'},
    {region: 'La Araucanía' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368030/images/examen/regiones/9_wqw5jz.png'},
    {region: 'Los Ríos' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/13_kj1glg.png'},
    {region: 'Los Lagos' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/13_kj1glg.png'},
    {region: 'Aysén' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/13_kj1glg.png'},
    {region: 'Magallanes' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/13_kj1glg.png'},
    {region: 'Santiago' , flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1657368032/images/examen/regiones/13_kj1glg.png'}
])

    puts 'regiones creadas!!!'
    


