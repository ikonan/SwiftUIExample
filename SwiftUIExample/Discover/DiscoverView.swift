//
//  DiscoverView.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/16.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI
struct DiscoverView: View {
    
    @State private var searchValue: String = ""
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("SwiftUI教程(独家首发)",text: self.$searchValue)
                        Button(action: {}) {
                            Text("| 书城")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }
                    }
                    .padding()
                    .background(Color(UIColor.lightGray.withAlphaComponent(0.1)))
                }
                .cornerRadius(30)
                .padding()
                Spacer()
                ScrollView{
                    CardView()
                }
            }.background(Color(.systemGroupedBackground))
            Button(action: {}) {
                ZStack {
                    Circle()
                        .fill(Color(.systemGroupedBackground))
                        .frame(width: CGFloat(65.0), height: CGFloat(65.0))
                    Image(systemName: "greaterthan")
                }
            }
            .offset(x: UIScreen.main.bounds.width / 2 - 60, y: UIScreen.main.bounds.height / 2 - 120)
        }
    }
}

struct CardView: View {
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Spacer()
                Image("image1")
                Text("SwiftUI教程")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("sun Yange")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
                Text("朋友们都在读")
                    .foregroundColor(.gray)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height - 200)
            .background(Color.white)
        }
        .cornerRadius(30)
        .padding()
        
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
