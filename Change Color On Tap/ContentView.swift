//
//  ContentView.swift
//  Change Color On Tap
//
//  Created by Tafadzwa Alexander on 2024/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var circleColor:Color = .gray
    @State var circleColor2:Color = .gray
    @State var circleColor3:Color = .gray
    @State var circleColor4:Color = .gray
    
    var body: some View {
        VStack{
            Text("Who coded this?")
                .font(.system(size: 30))
            HStack {
                Circle()
                    .fill(
                    Color(circleColor)
                    )
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        circleColor = .blue
                        circleColor2 = .gray
                        circleColor3 = .gray
                        circleColor4 = .gray
                        
                }
                Text("A.    Alexander")
                    .font(.system(size: 20))
            }.padding(.bottom)
            HStack {
                Circle()
                    .fill(
                    Color(circleColor2)
                    )
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        circleColor = .gray
                        circleColor2 = .blue
                        circleColor3 = .gray
                        circleColor4 = .gray
                }
                Text("B.    Tafadzwa")
                    .font(.system(size: 20))
            }.padding(.bottom)
            
            HStack {
                Circle()
                    .fill(
                    Color(circleColor3)
                    )
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        circleColor = .gray
                        circleColor2 = .gray
                        circleColor3 = .blue
                        circleColor4 = .gray
                }
                Text("C.    Bobby")
                    .font(.system(size: 20))
            }
            .padding(.horizontal, -75)
            .padding(.bottom)
            
            HStack {
                Circle()
                    .fill(
                    Color(circleColor4)
                    )
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        circleColor = .gray
                        circleColor2 = .gray
                        circleColor3 = .gray
                        circleColor4 = .blue
                }
                Text("D.    iSAD")
                    .font(.system(size: 20))
            }
            .padding(.horizontal, -75)
            .padding(.bottom)

        }
    }
}

#Preview {
    ContentView()
}
