//
//  SFSymbols.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/24.
//

import Foundation
import SwiftUI

enum SFSymbols: String, View {
    case home = "homekit"
    case slider = "slider.horizontal.below.rectangle"
    case strokeShape = "squareshape.dashed.squareshape"
    case alert = "exclamationmark.triangle.fill"
    case list = "list.bullet"
    
    var body: some View {
        Image(systemName: self.rawValue)
    }
}
