//
//  ContentView.swift
//  EsteeLauderChallenge
//
//  Created by Alyzee Sosa on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    // COLOR PALLETE
    
    let rubyRed = Color(red: 0.812, green: 0.192, blue: 0.286)
    let indianRed = Color(red: 0.886, green: 0.306 , blue: 0.357)
    let bubbleGumPink = Color(red: 0.988, green: 0.686 , blue: 0.741)
    let mimiPink = Color(red: 0.984, green: 0.835 , blue: 0.886)
    let blushPink = Color(red: 0.988, green: 0.906 , blue: 0.933)
    
    
    var body: some View {
        
        
        NavigationStack{
            // Everything will be pushed to edges as more content is added and the space is larger than the screen height
            ScrollView{
                
                // Main ZStack Container for content
                ZStack(){
                    
                    VStack{
                        
                        // Section 1 Intro
                        ZStack(alignment: .center){
                            Image("intro_capture").resizable().aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, minHeight: 600.0)
                                .clipped()
                                .overlay(
                                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [blushPink.opacity(0.10), rubyRed.opacity(0.85)]), startPoint: .top, endPoint: .bottom))
                                )
                            
                            Text("Nutritious").textCase(.uppercase).font(.custom("Akzidenz-Grotesk BQ", size: 36.0)).fontWeight(.bold).foregroundColor(.white).tracking(5.0)
                            
                            
                        }.overlay(
                            Text("Goodbye, grumpy skin. Hello, glow.").font(.custom("OptimaDisplay", size: 24.0)).foregroundColor(.white).padding(.vertical, 20.0), alignment: .bottom
                        ) // end of intro
                        
                        Spacer().frame(height: 50.0)
                        
                        // Section 2 - Overview
                        VStack(){
                            // Standard Subtitle
                            Text("Show skin some \(Text("love").foregroundColor(bubbleGumPink))").textCase(.uppercase).font(.custom("Akzidenz-Grotesk BQ", size: 26.0)).fontWeight(.bold).foregroundColor(.black).padding(10.0)
                            
                            Text("Ingeniously calibrated. Nutrient-rich. \n Featuring products in which \(Text("92%+ of the contents").fontWeight(.bold))  are created with naturally derived formulas.").font(.custom("Akzidenz-Grotesk BQ", size: 20.0)).multilineTextAlignment(.center).lineLimit(nil).padding(.horizontal, 15.0)
                            
                            
                        }
                    } // end of overall VStack
                    
                    
                }.padding(0).frame(maxWidth: .infinity, maxHeight: .infinity)
                // end of overall ZStack
            }
            // end of Scrollview
        }
        // end of Navigation Stack
        
    }
    
    // Finding font family names
//    init(){
//        for familyName in UIFont.familyNames{
//            print(familyName)
//        }
//    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
