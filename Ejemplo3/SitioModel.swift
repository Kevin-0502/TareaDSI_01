//
//  PlayerModel.swift
//  Ejemplo3
//
//  Created by desarrollador on 18/9/21.
//

import Foundation



class SitioModel {
    
    var sitios:[Sitio]?
    
    init() {
        sitios = []
        
        var sitio = Sitio()
        sitio.nombre = "Costa del Sol "
        sitio.foto = "https://enviajes.cl/wp-content/uploads/2015/01/Mejores-playas-El-Salvador-Costa-del-Sol.jpg"
        sitio.categoria = "Playa"
        sitio.latitude=(13.343409)
        sitio.longitude=(-89.006493)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "El Tunco "
        sitio.foto = "https://enviajes.cl/wp-content/uploads/2015/01/Mejores-playas-El-Salvador-El-Tunco.jpg"
        sitio.categoria = "Playa"
        sitio.latitude=(13.492253)
        sitio.longitude=(-89.381209)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Barra de Santiago"
        sitio.foto = "https://enviajes.cl/wp-content/uploads/2019/10/Mejores-playas-El-Salvador-Barra-Santiago.jpg"
        sitio.categoria = "Playa"
        sitio.latitude=(13.701354)
        sitio.longitude=(-90.031185)
        sitios?.append(sitio)

        
        sitio = Sitio()
        sitio.nombre = "Las Flores"
        sitio.foto = "https://enviajes.cl/wp-content/uploads/2015/01/Mejores-playas-El-Salvador-Las-Flores.jpg"
        sitio.categoria = "Playa"
        sitio.latitude=(13.169831)
        sitio.longitude=(-88.118743)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "El Zunzal"
        sitio.foto = "https://enviajes.cl/wp-content/uploads/2015/01/Mejores-playas-El-Salvador-El-Sunzal.jpg"
        sitio.categoria = "Playa"
        sitio.latitude=(13.492495)
        sitio.longitude=(-89.391926)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Parque Nacional El Boqueron"
        sitio.foto = "https://turismo.sv/wp-content/uploads/2019/06/el-boqueron-1.jpg"
        sitio.categoria = "Parque"
        sitio.latitude=(13.737387)
        sitio.longitude=(-89.279736)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Santa Ana Volcano"
        sitio.foto = "https://cdn2.civitatis.com/el-salvador/san-salvador/galeria/header/crater-volcan-santa-ana.jpg"
        sitio.categoria = "Parque"
        sitio.latitude=(13.853633)
        sitio.longitude=(-89.632296)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Jardin Botanico La Laguna"
        sitio.foto = "https://exclusivadigital.com.sv/wp-content/uploads/2021/04/FB_IMG_1619477348892.jpg"
        sitio.categoria = "Parque"
        sitio.latitude=(13.669503)
        sitio.longitude=(-89.247026)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Cerro Verde"
        sitio.foto = "https://diarioelsalvador.com/wp-content/uploads/2021/02/WhatsApp-Image-2021-02-16-at-7.46.45-PM.jpeg"
        sitio.categoria = "Parque"
        sitio.latitude=(13.825340)
        sitio.longitude=(-89.623121)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Puerta del Diablo"
        sitio.foto = "https://www.ngenespanol.com/wp-content/uploads/2018/08/La-Puerta-del-Diablo.jpg"
        sitio.categoria = "Parque"
        sitio.latitude=(13.492495)
        sitio.longitude=(-89.391926)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Teatro Nacional de SantaAna"
        sitio.foto = "https://ultimahora.sv/wp-content/uploads/2019/07/Santa-Ana-Teatro-735x400.jpg"
        sitio.categoria = "Teatro"
        sitio.latitude=(13.995424)
        sitio.longitude=(-89.556811)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Teatro Nacional de El Salvador"
        sitio.foto = "https://static.elmundo.sv/wp-content/uploads/2020/02/Teatro-Nacional.jpg"
        sitio.categoria = "Teatro"
        sitio.latitude=(13.698446)
        sitio.longitude=(-89.190409)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Teatro Alejandro Cotto"
        sitio.foto = "https://cdn-pro.elsalvador.com/wp-content/uploads/2018/02/Teatro-Coto.jpg"
        sitio.categoria = "Teatro"
        sitio.latitude=(13.937734)
        sitio.longitude=(-89.027349)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Teatro Presidente"
        sitio.foto = "https://www.laprensagrafica.com/__export/1556842333978/sites/prensagrafica/img/2019/05/02/20190502_061213449_fcul03052019xxllu9535.jpg_525981578.jpg"
        sitio.categoria = "Teatro"
        sitio.latitude=(13.692789)
        sitio.longitude=(-89.241083)
        sitios?.append(sitio)
        
        
        sitio = Sitio()
        sitio.nombre = "Teatro Luis Poma"
        sitio.foto = "https://lh3.googleusercontent.com/p/AF1QipMlZUkGEPcjECoRrgiUphzoHnIgfKjyT5_ePlBF"
        sitio.categoria = "Teatro"
        sitio.latitude=(13.706659)
        sitio.longitude=(-89.212532)
        sitios?.append(sitio)
        
        
    }
    
}
