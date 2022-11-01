//
//  HomeView.swift
//  TestingCode
//
//  Created by 陳人輔 on 2022/9/7.
//

import SwiftUI

struct HomeView: View {
    //@State var circleColor
    let week = ["Mon","Tue","Wed","Thu","Fri"]
    let numClass = [1,2,3,4,5,6,7,8]
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    @State var tabbed = false
    @State var widthOfCircle: CGFloat = 100
    var body: some View {
        VStack(){
            HStack(){
                Text("課表")
                    .font(.system(size:35).bold())
                Spacer()
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .foregroundColor(.secondary)
                    .frame(width:30,height:30)
                
                    //.resizable()
                    //.frame(width:20,height: 15)
                
                
            }.padding(.horizontal,30)
                .padding(.vertical,20)
            
            //Spacer()
            
            HStack(spacing: 30){
                Spacer()
                ForEach(0..<5){day in
                     Text(week[day])
                        .font(.system(size:20).bold())
                    
                }
                
            }.padding(.horizontal,30)
            
            Spacer()
                .frame(height: 25)
            
            HStack(alignment: .center){
                VStack(spacing: 40){
                    ForEach(0..<8){num in
                         Text(String(numClass[num]))
                            .font(.system(size:20).bold())
                        
                    }
                }
                Spacer()
                Rectangle()
                    .frame(width: 310,height:500)
                    .cornerRadius(8)
                    .foregroundColor(.secondary)
                
            }.padding(.horizontal,30)
            
            Spacer()
        }
        .background(Image("BG"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
