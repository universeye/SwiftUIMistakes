//
//  SliderView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct SliderView: View {
    
    @State private var rating = 0.0
    
    var body: some View {
        Slider(value: $rating)
            .onChange(of: rating, perform: { value in
                print("Rating changed to \(value)")
            })
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
