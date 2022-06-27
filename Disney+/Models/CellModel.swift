//
//  CellModel.swift
//  Disney+
//
//  Created by Dylan Caetano on 24/06/2022.
//

import Foundation

struct Cell: Identifiable {
    let id = UUID()
    let image: URL?
    let title: String
    let description: String
    let poster: [Poster]
    let genre: [String]
    let casting: [Actor]
    let rating: Float
}
