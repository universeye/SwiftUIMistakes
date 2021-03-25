//
//  ListView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct ListView: View {
    
    @State private var rowCount = 4
    
    var body: some View {
        VStack {
            Button("Add Row") {
                rowCount += 1
            }
            
            List(0..<rowCount, id: \.self) { row in
                //if you don't add id, it won't work
                Text("Row \(row)")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
