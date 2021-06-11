//
//  SwiftUIView.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 10/06/21.
//

import SwiftUI

struct NewsView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        List(networkManager.posts){ post in
            NavigationLink(destination: ListView()){
            HStack{
                Text(post.title)
            }
            }
            
        }
        .navigationTitle("Latest News")
        .onAppear(){
            self.networkManager.fetchData()
        }
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
