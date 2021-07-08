//
//  Marvel_model.swift
//  Marvel-App
//
//  Created by seneca on 07/07/2021.
//

import Foundation

typealias Metahumans = [Metahuman]

struct Metahuman {
    var image: String?
    var name: String
    var descripcion: String
    var power: Float = 0.0
}
