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
        
        let title: String = details.title
        let tags: String = details.tags
        let author: String = details.author
        let url: String = details.url
        
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
        DetailView()
    }
}
