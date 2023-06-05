//
//  ListRowView.swift
//  TodoList
//
//  Created by Malte Schumacher on 05.06.23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleated ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleated ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item", isCompleated: false)
    static var item2 = ItemModel(title: "Second item", isCompleated: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
