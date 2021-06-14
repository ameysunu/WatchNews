//
//  DetailView.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 11/06/21.
//

import SwiftUI
import UIKit

struct DetailView: View {
    
    let details = Display()
    
    let title: String
    let tags: String
    let author: String
    let url: String
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 17))
                .foregroundColor(Color.gray)
                .padding()
            Text("Tags: \(tags)")
                .font(.body)
            Text("By: \(author)")
                .font(.subheadline)
                .padding(.bottom)
            Spacer()
            Button(action: {
                UIPasteboard.general.string = url
            }){
                Text("Read now")
            }
//            Link("Read now", destination: URL(string: url)!)
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Sample", tags: "sample", author: "Jane Doe", url: "google.com")
    }
}
