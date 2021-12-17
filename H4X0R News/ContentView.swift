//
//  ContentView.swift
//  H4X0R News
//
//  Created by JUNSOO PARK on 2021-12-16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = Networkmanager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

