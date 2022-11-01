//
//  CircleView.swift
//  TestingCode
//
//  Created by 陳人輔 on 2022/10/5.
//

import SwiftUI

struct CircleView: View {
    @State var rotateAngle: Double = 0
    var body: some View {
        VStack(){
            
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(maxWidth:.infinity,maxHeight: 40)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                Text("Tab to Search")
                    .font(.system(size:25).bold())
                    .padding()
                    .opacity(0.5)
                
            }.padding()
            Spacer()
            Text("Hello")
                .foregroundColor(.white)
                .font(.system(size:70).bold())
            
            ZStack(){
                Circle()
                    .trim(from:0,to:rotateAngle/360)
                    .stroke(lineWidth: 30)
                    //.stroke(style: rou)
                    //.LineCap(.round)
                    .rotation(Angle(degrees: -90))
                    .frame(width:200,height:200)
                    .foregroundColor(.white)
                    .padding()
                    .animation(.interactiveSpring(response: 0.5,dampingFraction: 0.5,blendDuration: 0.4), value: rotateAngle)
                
                Image(systemName:"globe.asia.australia.fill")
                
                    .resizable()    
                    .frame(width:200,height: 200)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            ZStack(){
                Circle()
                    .stroke(lineWidth:4)
                    .frame(width:70)
                    .foregroundColor(.white)
                Image(systemName:"arrow.down")
                    .resizable()
                
                    .frame(width:40,height: 40)
                    .foregroundColor(.white)
                    
            }
            .onTapGesture(count:2){
                rotateAngle = rotateAngle < 359 ? rotateAngle + 40 : 0
            }
            Spacer()
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Image("BG"))
            //.ignoresSafeArea()
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
