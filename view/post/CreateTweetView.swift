//
//  CreateTweetView.swift
//  rede-social
//
//  Created by Aref Chucri on 12/09/24.
//

import SwiftUI

struct CreateTweetView: View {
   
    
    @State var text = ""
    
    
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Tweet")
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultilineTextField(text: $text)
        }
        .padding()
    }
}
    
    #Preview {
        CreateTweetView()
    }

