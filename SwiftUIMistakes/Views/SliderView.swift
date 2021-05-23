//
//  SliderView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct SliderView: View {
    
    @State private var rating = 0.0
    @State private var rating2 = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $rating.onChange({ value in
                sliderChanged(value)
            }))
        
        
        //another way of writing above's code is:
        Slider(value: $rating2.onChange(sliderChanged(_ :)))
        }
//            .onChange(of: rating, perform: { value in
//                print("Rating changed to \(value)")
//            })
    }
    
    
    func sliderChanged(_ value: Double) {
        print("Rating changed to \(value)")
    }
}

//extension on binding with function onChange
extension Binding {
    //escaping over whatever the value of the binding is, returns Void, returns a new Binding over that value
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        //return a Binding
        Binding(
            //where the getter is
            get: { self.wrappedValue },
            //where the setter is
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
