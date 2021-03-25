//
//  StrokeView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct StrokeView: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.red, lineWidth: 20)
                .frame(width: 150, height: 150)
                .padding()
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 20, dash: [10]))
                .frame(width: 280, height: 280)
        }
    }
}

struct StrokeView_Previews: PreviewProvider {
    static var previews: some View {
        StrokeView()
    }
}
