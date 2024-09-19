//
//  tweetCellView.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import SwiftUI

struct tweetCellView: View {
    
    
    var tweet: String
    var tweetImage: String?
    
    
    
    
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing : 10 , content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55,height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading,spacing: 10 ,  content: {
                    (
                        Text("Cem")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        +
                        Text("@cem_salta")
                            .foregroundColor(.gray)

                    )
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    
                    if let image = tweetImage{
                        GeometryReader{ proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                       
                    
                })
            })
            HStack( spacing:50 ,content: {
                Button(action: {
                    
                }, label:  {
                    Image("Comments").resizable()
                        .frame(width: 16,height: 16)
                }).foregroundColor(.gray)
                Button(action: {}, label: {
                    Image("Retweet").resizable()
                        .frame(width: 18,height: 14)
                }).foregroundColor(.gray)
                
                Button (action:{
                    
                }, label: {
                    Image("love").resizable()
                        .frame(width: 18,height: 15)
                }).foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image("upload").resizable().renderingMode(.template)
                        .frame(width: 18, height: 15)
                }).foregroundColor(.gray)

            })
            .padding(.top, 4)
                
            }
        }
    }


#Preview {
    tweetCellView(tweet:simpleText)
}

var simpleText = "digite o seu primeiro post aqui:"
