//
//  PlayEnvironmentView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct PlayEnvironmentView: View {
    var body: some View {
           PlayerView()
            .environment(\.layoutDirection, .rightToLeft)
       }
}

struct PlayerView: View {
    var body: some View {
        HStack {
            Button("previous") {

            }
            Button("play") {

            }
            Button("next") {

            }
        }
    }
}

struct PlayEnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayEnvironmentView()
    }
}
