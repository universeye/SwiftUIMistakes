//
//  ContentView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            Text("Hello, world!")
                .padding()
                .tabItem {
                    SFSymbols.home
                    Text("Home")
                }
        
        Text("2")
            .tabItem { SFSymbols.slider
                Text("Slider")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
