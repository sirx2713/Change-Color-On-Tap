//
//  ContentView.swift
//  Change Color On Tap
//
//  Created by Tafadzwa Alexander on 2024/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var circleColor:Color = .gray
    
    var body: some View {
        HStack{
            Circle()
                .fill(
                Color(circleColor)
                )
                .frame(width: 30, height: 30)
                .onTapGesture {
                    circleColor = .blue
                }
        }
    }
}

#Preview {
    ContentView()
}
