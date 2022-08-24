//
//  ContentView.swift
//  Hack News
//
//  Created by Марк Михайлов on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjur"),
    Post(id: "3", title: "Holo")
]
