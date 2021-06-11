//
//  DetailView.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 11/06/21.
//

import SwiftUI

struct DetailView: View {
    let details = Display()
    var body: some View {
        NavigationView{
        VStack(alignment: .leading){
            Text(details.title)
                .font(.title)
            Text("Tags: \(details.tags)")
                .font(.body)
            Text("By: \(details.author)")
                .font(.subheadline)
            Spacer()
            Button(action: {
                print(details.url)
            }){
                Text("Read now")
            }
            
        }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
