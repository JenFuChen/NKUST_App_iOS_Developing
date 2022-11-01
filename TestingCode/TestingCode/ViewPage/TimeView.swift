//
//  TimeView.swift
//  TestingCode
//
//  Created by 陳人輔 on 2022/9/8.
//

import SwiftUI

struct TimeView: View {
    @State var doubleClick: Bool = false
    @State var heightOfCell: CGFloat = 80
    @State var clickButton : Bool = false
    @State var showWalkScreen:Bool = false
    var body: some View {
        ZStack(){
            Image("BG")
                .resizable()
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .ignoresSafeArea()
            
            
            IntroScreen()
            
            NavBar()
            
            //WalkThroughScreen()
        }.animation(.interactiveSpring(response: 0.8,dampingFraction: 0.5,blendDuration: 0.4), value: showWalkScreen)
        //.ignoresSafeArea()
        
        
        
//        VStack(){
//            ScrollView(.horizontal){
//                HStack(){
//                    ForEach(0..<5){num in
//                        Button(
//                            action:{
//                                doubleClick.toggle()
//                            }
//                            ,label:{
//
//                                Text("Home")
//                                    .font(.system(size:20).bold())
//                                    .foregroundColor(.secondary)
//                            }
//                        )
//                    }
//
//
//
//                }
//            }.padding()
//            ZStack(alignment: .leading){
//                Rectangle()
//                    .foregroundColor(.secondary)
//                    .cornerRadius(10)
//                    .opacity(0.3)
//                    .onTapGesture(count:2){
//
//                    }
//
//                HStack(){
//                    Rectangle()
//                        .foregroundColor(.secondary)
//                        .frame(width:18)
//                        //.cornerRadius()
//                    VStack(alignment: .leading){
//                        Text("Hello")
//                            .font(.system(size:30).bold())
//
//                        Text("This is a testing project")
//                            .font(.system(size:15).bold())
//                    }
//
//                }
//
//            }
//            .frame(height: 80)
//            .padding()
//            .cornerRadius(10)
//            //DatePicker
//        }
        
    }
    
    @ViewBuilder
    func WalkThroughScreen()-> some View{
        VStack(){
            Image("Image1")
                .resizable()
                .frame(width:150,height: 150)
            
            Text("Hey")
                .font(.system(size:20).bold())
        }
    }
    
    
    @ViewBuilder
    func NavBar()-> some View{
        HStack(){
            Button{
                showWalkScreen.toggle()
            }label:{
                Image(systemName:"chevron.left")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Button("Skip"){
                
            }.font(.system(size:15).bold())
                .foregroundColor(.secondary)
                
        }
        .padding(.horizontal,15)
        .padding(.top,20)
        .frame(maxHeight: .infinity,alignment: .top)
        .offset(y: showWalkScreen ? 0 : -120)
        
    }
    
    @ViewBuilder
    func IntroScreen() ->some View{
        GeometryReader{
            let size = $0.size
            VStack(spacing : 10){
                
                Image("Image1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width,height:size.height / 2)
                    
                
                Text("Welcome")
                    .font(.system(size:22))
                
                Text("NKUST")
                    .fontWeight(.heavy)
                    .font(.system(size:45))
                
                Text("This is a new App for NKUST.\nLet's ")
                    .font(.system(size:20))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                
                Text("Let's Begin!")
                    .font(.system(size:20).bold())
                    .fontWeight(.semibold)
                    .padding(.horizontal,40)
                    .padding(.vertical,15)
                    .foregroundColor(.white)
                    .background{
                        Capsule()
                            .fill(.secondary)
                    }
                    .onTapGesture {
                        showWalkScreen.toggle()
                    }
                    .padding(.top,40)
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            .offset(y:showWalkScreen ? -size.height : 0)
            .ignoresSafeArea()
            
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
            .previewDevice("iMac")
    }
}
