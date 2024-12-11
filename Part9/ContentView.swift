//
//  ContentView.swift
//  Part9
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    var body: some View {
        VStack {
            Button("アラート") {
                isShowAlert = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか？", isPresented: $isShowAlert) {
            Button("削除する", role: .destructive) {
                
            }
            Button("キャンセル", role: .cancel) {
                
            }
        } message: { Text("一度削除したら元に戻すことはできません") }
    }
}

#Preview {
    ContentView()
}
