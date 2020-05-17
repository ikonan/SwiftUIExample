//
//  AnimationDemo.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/17.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI

struct AnimationDemo: View {
    
    private let screeWidth = UIScreen.main.bounds.width
    private let screenHeight = UIScreen.main.bounds.height
    @State var viewState = CGSize.zero
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                AnimationCard(bookImage: "image1", bookName: "SwiftUI教程", bookAuthor: "Sun Yang")
                    .gesture(DragGesture()
                        .onChanged { value in
                            if (value.translation.width < 0) {
                                self.viewState = value.translation
                            }
                        }
                        .onEnded { value in
                            if (value.translation.width > -(self.screeWidth / 2 - 40)){
                                self.viewState = CGSize.zero
                            } else {
                                self.viewState.width = -(self.screeWidth)
                            }
                        
                        }
                )
                    .animation(.spring())
                AnimationCard(bookImage: "image1", bookName: "MySQL从删库到跑路", bookAuthor: "ikonan")
                    .animation(.spring())
            }
            .offset(x: UIScreen.main.bounds.width / 2 + viewState.width)
            
            Spacer()
        }.background(Color(.systemGroupedBackground))
        
    }
}

struct AnimationDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDemo()
    }
}
