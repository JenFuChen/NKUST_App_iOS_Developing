//
//  ContentView.swift
//  TestingCode
//
//  Created by 陳人輔 on 2022/9/7.
//

import SwiftUI

let customForegroundColor = UIColor(red: 50/255, green: 40/255, blue: 38/255, alpha: 1) // 主色調

let customBackgroundColor = UIColor(red: 33/255, green: 38/255, blue: 42/255, alpha: 1)

struct ContentView: View {
    @State var currentTab :Tab = .Home
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 10){
            TabView(selection: $currentTab){
                
                HomeView()
                    .tag(Tab.Home)
                
                PersonalPageView()
                    .tag(Tab.Profile)
                
                CircleView()
                    .tag(Tab.Cart)
                
                TimeView()
                    .tag(Tab.Liked)
            }
            .background(Image("BG"))
            
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.self){tab in
                    Button{
                        currentTab = tab
                    }label:{
                        Image(systemName: tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ?
                                             Color(customForegroundColor):
                                                Color.black.opacity(0.3)
                            )
                    }
                }
            }
            .padding([.horizontal,])
            .padding(.bottom, 10)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab: String, CaseIterable{
    // Raw Value
    case Home = "house.fill"
    case Liked = "heart.fill"
    case Cart = "cart.fill"
    case Profile = "person.fill"
}
