//
//  DataFlowEnvironmentDemo.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/16.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI

class EnvironmentDemo: ObservableObject {
    @Published var counter: Int = 0
    
}


struct DataFlowEnvironmentDemo: View {
    @EnvironmentObject var environmentDemo: EnvironmentDemo
    var body: some View {
        VStack {
            Stepper(value: self.$environmentDemo.counter) {
                Text("Stepper")
            }.padding(80)
            Text("MainView:\(self.environmentDemo.counter)")
            EnviSubView1().padding()
        }
    }
}

struct EnviSubView1: View {
    @State private var counter = 0
    var body: some View {
        VStack {
            Stepper(value: self.$counter) {
                Text("Stepper")
            }.padding(80)
            Text("EnviSubView1:\(self.counter)")
            EnviSubView2()
        }
    }
}

struct EnviSubView2: View {
    @EnvironmentObject var environmentDemo: EnvironmentDemo
    var body: some View {
        VStack {
            Stepper(value: self.$environmentDemo.counter) {
                Text("Stepper")
            }.padding(80)
            Text("EnviSubView2:\(self.environmentDemo.counter)")
        }
    }
}



struct DataFlowEnvironmentDemo_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowEnvironmentDemo().environmentObject(EnvironmentDemo())
    }
}
