//
//  ItemModel.swift
//  TodoList
//
//  Created by Malte Schumacher on 05.06.23.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleated: Bool
}
