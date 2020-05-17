//
//  StateDemo.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/16.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI

struct StateDemo: View {
    @State private var isShow: Bool = false
    @State private var counter: Int = 0
    
    var body: some View {
        VStack{
            Button(action: {
                self.isShow.toggle()
            }) {
                Text("点击切换效果显示")
            }
            
            Stepper(value: $counter) {
                Text("Stepper")
            }.padding(80)
            
            ZStack {
                Text("Hello World!").blur(radius: self.isShow ? 10 : 0)
                if self.isShow {
                    Text("\(self.counter)")
                }
            }
        }
    }
}

struct StateDemo_Previews: PreviewProvider {
    static var previews: some View {
        StateDemo()
    }
}
