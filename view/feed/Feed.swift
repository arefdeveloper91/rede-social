//
//  Feed.swift
//  rede-social
//
//  Created by Aref Chucri on 11/09/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,content: {
            VStack(spacing: 18){
               
                tweetCellView(tweet: "Hey tim , are you doing?",
                tweetImage: "post")
                Divider()
                
                ForEach(1...20, id:\.self) { _ in
                    
                tweetCellView(tweet: simpleText)
                    Divider()
                }
                
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}
    
    #Preview {
        Feed()
    }

