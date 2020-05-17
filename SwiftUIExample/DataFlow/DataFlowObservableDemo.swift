//
//  DataFlowObservableDemo.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/16.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI

class ObserveClassDemo: ObservableObject {
    @Published var counter: Int = 0
}


struct DataFlowObservableDemo: View {
    @ObservedObject var observeClassDemo: ObserveClassDemo
    var body: some View {
        VStack {
            Stepper(value: self.$observeClassDemo.counter) {
                Text("Stepper")
            }.padding(80)
            Text("MainView:\(self.observeClassDemo.counter)")
            ObservedSubView1(observeClassDemo: self.observeClassDemo).padding()
        }
    }
}

struct ObservedSubView1: View {
    @ObservedObject var observeClassDemo: ObserveClassDemo
    var body: some View {
        VStack {
            Stepper(value: self.$observeClassDemo.counter) {
                Text("Stepper")
            }.padding(80)
            Text("MainView:\(self.observeClassDemo.counter)")
            ObservedSubView2(observeClassDemo: self.observeClassDemo)
        }
    }
    
}

struct ObservedSubView2: View {
    @ObservedObject var observeClassDemo: ObserveClassDemo
    var body: some View {
        VStack {
            Stepper(value: self.$observeClassDemo.counter) {
                Text("Stepper")
            }.padding(80)
            Text("MainView:\(self.observeClassDemo.counter)")
        }
    }
}



struct DataFlowObservableDemo_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowObservableDemo(observeClassDemo: ObserveClassDemo())
    }
}
