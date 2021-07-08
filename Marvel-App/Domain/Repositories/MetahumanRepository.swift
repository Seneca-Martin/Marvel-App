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
                   name: "Capitán America",
                   descripcion: "El culo de America",
                   power: 7.0),
         Metahuman(image: "img_heroe_black_panther",
                    name: "Black Panther",
                    descripcion: "Wakanda forever",
                    power: 7.0),
         Metahuman(image: "img_heroe_black_widow",
                    name: "Black Widow",
                    descripcion: "Hace que sus enemigos se ahoguen en sus propias babas al verla",
                    power: 5.0),
         Metahuman(image: "img_heroe_dr_strange",
                    name: "Dr. Strange",
                    descripcion: "Aprendió a hacer cosas con las manos en Tic Tok y ahora es mago",
                    power: 9.0),
         Metahuman(image: "img_heroe_gamora",
                    name: "Gamora",
                    descripcion: "Dale un arma y le toca las P.... al mismo Thanos",
                    power: 6.0),
         Metahuman(image: "img_heroe_hulk",
                    name: "Hulk",
                    descripcion: "Esta mamadiiiisimo",
                    power: 9.0),
         Metahuman(image: "img_heroe_ironman",
                    name: "Ironman",
                    descripcion: "Su superpoder es ser super rico e inteligente",
                    power: 7.0),
         Metahuman(image: "img_heroe_marvel_captain",
                    name: "Capitana Marvel",
                    descripcion: "Cuanta mala leche metida en una rubia",
                    power: 9.0),
         Metahuman(image: "img_heroe_spiderman",
                    name: "Spiderman",
                    descripcion: "El niño enredado",
                    power: 8.0),
         Metahuman(image: "img_heroe_thor",
                    name: "Thor",
                    descripcion: "El clon de Séneca Martín",
                    power: 9.0)]
    }
    
    var metahumansVillain: Metahumans {
        [Metahuman(image: "img_villain_dormammu",
                   name: "Dormanmu",
                   descripcion: "El ser que hace dormir en el Baticano",
                   power: 9.0),
         Metahuman(image: "img_villain_ego",
                    name: "Ego",
                    descripcion: "Papa se fué a por tabaco",
                    power: 9.0),
         Metahuman(image: "img_villain_hela",
                    name: "Ela",
                    descripcion: "UUUUUUUyyyy que mal caracter, mejor no hacer tratos contigo",
                    power: 9.0),
         Metahuman(image: "img_villain_ivan_vanko",
                    name: "Ivan Vanko",
                    descripcion: "Queria ser Indiana Jones cabreado",
                    power: 7.0),
         Metahuman(image: "img_villain_johann_schmidt",
                    name: "Johan Schmidt",
                    descripcion: "Tenia tanto stres que la cabeza se le puso roja",
                    power: 8.0),
         Metahuman(image: "img_villain_malekith",
                    name: "Malekith",
                    descripcion: "El hermano frustrado de Legolas",
                    power: 8.0),
         Metahuman(image: "img_villain_ronan",
                    name: "Ronan",
                    descripcion: "En el cole no tenía amigos",
                    power: 7.0),
         Metahuman(image: "img_villain_thanos",
                    name: "Thanos",
                    descripcion: "Su idea del universo era buena pero tenia que haberla hecho con politicos, ni los vengadores se habrían opuesto",
                    power: 9.0),
         Metahuman(image: "img_villain_ultron",
                    name: "Ultron",
                    descripcion: "Maaami la lavadora hace cosas raras",
                    power: 7.0),
         Metahuman(image: "img_villain_yon_rogg",
                    name: "Yon Rogg",
                    descripcion: "Elemental querido Yon",
                    power: 6.0)]
    }
}
