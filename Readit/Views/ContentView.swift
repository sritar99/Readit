//
//  ContentView.swift
//  Readit
//
//  Created by Sri Harsha on 16/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import SwiftUI
import WebKit
@available(iOS 13.0, *)
struct ContentView: View {
    @ObservedObject var networkmanager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkmanager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
        .navigationBarTitle("Readit")
        }
        .onAppear{
            self.networkmanager.fetchData()
        }
    }
}

@available(iOS 13.0, *)
@available(iOS 13.0.0, *)
@available(iOS 13.0.0, *)
struct ContentView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//Post(id: "1", title: "Harsha"),
//Post(id: "2", title: "Harsha"),
//Post(id: "3", title: "Harsha"),
//]
