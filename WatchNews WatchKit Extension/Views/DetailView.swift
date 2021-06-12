//
//  DetailView.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 11/06/21.
//

import SwiftUI

struct DetailView: View {
    
    let details = Display()
    
    let title: String
    let tags: String
    let author: String
    let url: String
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(title)
                .font(.title)
            Text("Tags: \(tags)")
                .font(.body)
            Text("By: \(author)")
                .font(.subheadline)
            Spacer()
            Button(action: {
                print(url)
            }){
                Text("Read now")
            }
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Sample", tags: "sample", author: "Jane Doe", url: "google.com")
    }
}
