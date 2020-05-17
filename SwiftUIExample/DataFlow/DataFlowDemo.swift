//
//  DataFlowDemmo.swift
//  SwiftUIExample
//
//  Created by 郭敦松 on 2020/5/16.
//  Copyright © 2020 郭敦松. All rights reserved.
//

import SwiftUI


struct SubView: View {
    @Binding var subCounter: Int
//    @State var subCounter: Int
    
    var body: some View {
        VStack {
            Stepper(value :$subCounter) {
                Text("Stepper")
            }.padding(80)
            Text("SubView:\(self.$subCounter.wrappedValue)")
        }
    }
}


struct DataFlowDemo: View {
    @State private var counter: Int = 0
    var body: some View {
        VStack {
            Stepper(value: $counter) {
                Text("Stepper")
            }.padding(80)
            Text("MainView:\(self.counter)")
            SubView(subCounter: $counter).padding()
        }
    }
}

struct DataFlowDemo_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowDemo()
    }
}
