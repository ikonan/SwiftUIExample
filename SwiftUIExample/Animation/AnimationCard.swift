//
//  AnimationCard.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/17.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI

struct AnimationCard: View {
    @State var bookImage: String
    @State var bookName: String
    @State var bookAuthor: String
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Spacer()
                Image(self.bookImage)
                    .resizable().frame(width: screenWidth - 80, height: screenHeight - 460)
                Text(self.bookName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(self.bookAuthor)
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                
                Text("朋友们都在读 >")
                    .foregroundColor(.gray)
                Spacer()
            }
            .frame(width: screenWidth - 40, height: screenHeight - 60.0)
            .background(Color.white)
            
        }
        .cornerRadius(30)
        .padding()
        
    }
}
