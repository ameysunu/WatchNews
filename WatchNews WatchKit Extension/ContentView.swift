//
//  ContentView.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 09/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("WatchNews")
                .font(.title2)
                .fontWeight(.thin)
            
            Text("Live News and updates, right on your watch.")
                .font(.subheadline)
                .fontWeight(.thin)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
