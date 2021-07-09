//
//  MetahumanRepository.swift
//  Marvel-App
//
//  Created by seneca on 07/07/2021.
//

import Foundation

class MetahummanRepository {
    
    var metahumansHero: Metahumans {
        [Metahuman(image: "img_heroe_america_captain",
                   name: "CAPITÁN AMÉRICA",
                   descripcion: "Metahumano que sin duda es El culo de America",
                   power: 7.0),
         Metahuman(image: "img_heroe_black_panther",
                    name: "BLACK PANTHER",
                    descripcion: "Wakanda forever, ¡Yibambe!, ¡Yibambe!, ¡Yibambe!, ¡Yibambe!, ¡Yibambe!, ¡Yibambe!",
                    power: 7.0),
         Metahuman(image: "img_heroe_black_widow",
                    name: "BLACK WIDOW",
                    descripcion: "Metahumana con un poder particular, consigue que sus enemigos se ahoguen en sus propias babas nada más verla",
                    power: 5.0),
         Metahuman(image: "img_heroe_dr_strange",
                    name: "DR. STRANGE",
                    descripcion: "Aprendió a hacer movimientos con las manos en Tic Tok y ahora es mago",
                    power: 9.0),
         Metahuman(image: "img_heroe_gamora",
                    name: "GAMORA",
                    descripcion: "Dale un arma y le toca las P.... al mismo Thanos",
                    power: 6.0),
         Metahuman(image: "img_heroe_hulk",
                    name: "HULK",
                    descripcion: "Esta mamadiiiiiiisimo",
                    power: 9.0),
         Metahuman(image: "img_heroe_ironman",
                    name: "IRONMAN",
                    descripcion: "Su superpoder es ser Suuuupeeeer Riiiiiico ¡oh seeeea!",
                    power: 7.0),
         Metahuman(image: "img_heroe_marvel_captain",
                    name: "CAPITANA MARVEL",
                    descripcion: "Cuanta mala leche metida en una rubia",
                    power: 9.0),
         Metahuman(image: "img_heroe_spiderman",
                    name: "SPIDERMAN",
                    descripcion: "El niño enredado",
                    power: 8.0),
         Metahuman(image: "img_heroe_thor",
                    name: "THOR",
                    descripcion: "Este Metahumano tiene la suerte de ser un clon de Séneca Martín",
                    power: 9.0)]
    }
    
    var metahumansVillain: Metahumans {
        [Metahuman(image: "img_villain_dormammu",
                   name: "DORMANMU",
                   descripcion: "El ser que hace dormir en el Baticano",
                   power: 9.0),
         Metahuman(image: "img_villain_ego",
                    name: "EGO",
                    descripcion: "El clásico ejemplo de Papa se fué a por tabaco",
                    power: 9.0),
         Metahuman(image: "img_villain_hela",
                    name: "ELA",
                    descripcion: "UUUUUUUyyyy que mal caracter, mejor no hacer tratos con ELLA",
                    power: 9.0),
         Metahuman(image: "img_villain_ivan_vanko",
                    name: "IVAN VANKO",
                    descripcion: "Metahumano con complejo de Indiana Jones cabreado",
                    power: 7.0),
         Metahuman(image: "img_villain_johann_schmidt",
                    name: "JOHAN SCHMIDT",
                    descripcion: "Hombre estresado de poner constraints que su cabeza se puso roja",
                    power: 8.0),
         Metahuman(image: "img_villain_malekith",
                    name: "MALEKITH",
                    descripcion: "Este metahumano es el hermano frustrado de Legolas",
                    power: 8.0),
         Metahuman(image: "img_villain_ronan",
                    name: "RONAN",
                    descripcion: "En el cole no tenía amigos",
                    power: 7.0),
         Metahuman(image: "img_villain_thanos",
                    name: "THANOS",
                    descripcion: "Si hubiese eliminado a la mitad de los politicos, ni los Vengadores se habrían opuesto",
                    power: 9.0),
         Metahuman(image: "img_villain_ultron",
                    name: "ULTRON",
                    descripcion: "Maaami la lavadora hace cosas raras",
                    power: 7.0),
         Metahuman(image: "img_villain_yon_rogg",
                    name: "YON ROGG",
                    descripcion: "Elemental querido Yon",
                    power: 6.0)]
    }
}
