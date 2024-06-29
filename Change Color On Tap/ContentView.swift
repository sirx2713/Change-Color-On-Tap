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
    @State var selectedCircle = ""
    @State var answerText = "Check Answer"
    @State var markScore = 0
    
    var body: some View {
        VStack{
            Text("Who coded this?")
                .font(.system(size: 30))
            VStack(alignment: .leading){
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
                            selectedCircle = "A"
                            
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
                            selectedCircle = "B"
                        }
                    Text("B.    Bobby")
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
                            selectedCircle = "C"
                        }
                    Text("C.    Tafadzwa")
                        .font(.system(size: 20))
                }
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
                            selectedCircle = "D"
                        }
                    Text("D.    iSAD")
                        .font(.system(size: 20))
                }
                .padding(.bottom)
            }
            
            Button(action: {
                answerCheck()
            }, label: {
                Text(answerText)
            })
            Text(String(markScore))
                .font(.system(size: 40))
                .padding(.top)
        }
        .multilineTextAlignment(.trailing)
        .padding()
    }
    
    func answerCheck(){
        
        if selectedCircle == "D" {
            circleColor4 = .green
            answerText = "Correct🥳!"
            if markScore == 1 {
                markScore += 0
            }
            else if markScore < 1 || markScore  == 0{
                markScore += 1
            }
            else if markScore < 1{
                markScore += 0
            }
            
        }
        
        else if selectedCircle == "A" && selectedCircle != ""{
            circleColor = .red
            answerText = "Wrong Answer😔!"
        }
        
        else if selectedCircle == "B" && selectedCircle != ""{
            circleColor2 = .red
            answerText = "Wrong Answer😔!"
        }
        
        else if selectedCircle == "C" && selectedCircle != ""{
            circleColor3 = .red
            answerText = "Wrong Answer😔!"
        }
        
        
    }
}

#Preview {
    ContentView()
}
