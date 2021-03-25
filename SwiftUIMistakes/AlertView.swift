//
//  AlertView.swift
//  SwiftUIMistakes
//
//  Created by Terry Kuo on 2021/3/25.
//

import SwiftUI

struct User: Identifiable {
    let id: String
}

struct AlertView: View {
    
    @State private var selectedUsr: User?
    @State private var showingAlert = false
    
    
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                selectedUsr = User(id: "terry")
                showingAlert = true
            }
            .padding()
            
            Button("Show Alert 2") {
                selectedUsr = User(id: "YoYoKuo")
            }
        }
        .alert(item: $selectedUsr) { (user) -> Alert in
            Alert(title: Text("Hello \(user.id)"))
        }
//        .alert(isPresented: $showingAlert, content: {
//            Alert(title: Text("Hello \(selectedUsr!.id)"))
//        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
