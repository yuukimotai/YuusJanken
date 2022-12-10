//
//  ContentView.swift
//  YuusJanken
//
//  Created by 茂田井雄輝 on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber: Int = 0
    
    var body: some View {
        
        if answerNumber == 0 {
            
            Text("ジャンケンする?")
                .padding(.bottom)
        } else if answerNumber == 1 {
            
            Image("gu")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
                .frame(height: 256)
            
            Text("グー")
                .padding(.bottom)
        } else if answerNumber == 2 {
            
            Image("choki")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
                .frame(height: 128)
            
            Text("チョキ")
                .padding(.bottom)
        } else {
            
            Image("pa")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
                .frame(height: 128)
            
            Text("パー")
                .padding(.bottom)
        }
        
        VStack{
            
            Button(action: {
                
                var newAnswerNumber = 0
                
                repeat {
                    
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }) {
                
                Text("ジャンケンする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
        }
    }
}
