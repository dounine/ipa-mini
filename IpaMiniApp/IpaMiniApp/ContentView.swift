//
//  ContentView.swift
//  IpaMiniApp
//
//  Created by lake on 2024/7/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Button {
    //                let ff = FF()
                    print("hello，我是app")
                } label: {
                    Text("我是app")
                }
            }
            .padding()
        })
    }
}

//#Preview {
//    ContentView()
//}
