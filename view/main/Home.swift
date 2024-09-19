//
//  Home.swift
//  rede-social
//
//  Created by Aref Chucri on 11/09/24.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    @State var showCreateTweet = false
    @State var text = ""
    
    var body: some View {
        VStack{
            ZStack{
                TabView{
                    Feed()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem{
                            if(selectedIndex == 0){
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Home")
                            }
                            
                        }
                    
                    searchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if(selectedIndex == 1){
                                Image("Search").renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Search")
                            }
                        }
                    notificationView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            if(selectedIndex == 2){
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Notifications")
                            }
                        }
                    messageView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            if(selectedIndex == 3){
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }
                            else{
                                Image("Messages")
                                
                                
                            }
                        }
                }
                
                VStack{
                    Spacer()
                   
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            self.showCreateTweet.toggle()
                        }, label: {
                            Image("tweet").renderingMode(.template).resizable().frame(width: 20, height: 20).padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                }
                .padding(.bottom,65)
            }
            .sheet(isPresented: $showCreateTweet, content: {
                CreateTweetView(text: text)
            })
        }
    }
}

#Preview {
    Home()
}
