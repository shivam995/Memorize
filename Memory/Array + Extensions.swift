//
//  Array + Extensions.swift
//  Memory
//
//  Created by Shivam Jaiswal on 02/08/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(of element: Element) -> Int? {
           for index in 0..<self.count {
               if self[index].id == element.id{
                   return index
               }
           }
           return nil
       }
}
 
