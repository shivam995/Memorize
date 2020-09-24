//
//  Grid.swift
//  Memory
//
//  Created by Shivam Jaiswal on 28/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View  {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], itemView: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = itemView
    }
    var body: some View {
        GeometryReader { geometry in
            self.body(for: GridLayout(itemCount: self.items.count, in: geometry.size))
        }
    }
    
    func body(for gridLayout: GridLayout)-> some View {
        ForEach(items) { item in
            self.gridBody(for: item, in: gridLayout)
        }
    }
    
    func gridBody(for item: Item, in layout: GridLayout) -> some View {
        let index = items.firstIndex(of: item)!
        return viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
}
