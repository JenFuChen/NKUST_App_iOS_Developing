//
//  TimeView.swift
//  TestingCode
//
//  Created by 陳人輔 on 2022/9/8.
//

import SwiftUI

struct PersonalPageView: View {
    var typeOfInfo = ["查詢","登錄","申請","卓越教學","其他作業","學務資訊系統"]
    var academicInfo = ["學籍資料","學期成績","期中預警","歷年成績","選課清單","開課資訊"]
    var studentInfo = ["班級名單（班長）","個人缺曠","獎懲明細","助學輔助","五專前三年免學費","社團紀錄"]
    var finacialInfo = ["出納查詢","列印學雜費繳費單","學雜費收據列印"]
    
    
    @State var showSheet : Bool = false
    @State var indexSelect: String = ""
    
    
    var showEachSheet = ""
    var body: some View {
        ZStack(alignment: .center){
            VStack(){
                // 頂部顯示列
                HStack(){
                    VStack(alignment:.leading,spacing:8){
                        Text("Chen JenFu")
                            .font(.system(size:30).bold())
                        
                        HStack(){
                            Text("四子二丙")
                                .foregroundColor(.secondary)
                                .font(.system(size:18).bold())
                            
                            Text("C110152319")
                                .foregroundColor(.secondary)
                                .font(.system(size:18).bold())
                        }
                    }
                    
                    Spacer()
                    
                    ZStack(){
                        Circle()
                            .frame(width:75)
                            .foregroundColor(.secondary)
                        
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.horizontal,30)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:10){
                        ForEach(typeOfInfo, id: \.self){index in
                            Button{
                                indexSelect = index
                            }label:{
                                Text(index)
                            }.foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal,30)
                }
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.secondary)
                    .cornerRadius(5)
                    .padding(.horizontal,10)
                
                ZStack(){
                    searchPage()
                    
                    //searchPage()
                }
                
                //.padding(.top,-35)
    //            ScrollView(.vertical){
    //                VStack(){
    //                    HStack(){
    //
    //                        ZStack(){
    //                            Rectangle()
    //                                .frame(width:110,height: 80)
    //                                .cornerRadius(8)
    //                            VStack(){
    //                                Image(systemName:"note.text")
    //                                    .resizable()
    //                                    .frame(width:40,height:40)
    //                                    .foregroundColor(.white)
    //
    //                                Text("Grades")
    //                                    .padding(.top,-5)
    //                                    .foregroundColor(.white)
    //
    //                            }
    //                        }
    //
    //
    //                        ZStack(){
    //                            Rectangle()
    //                                .frame(width:110,height: 80)
    //                                .cornerRadius(8)
    //                            VStack(){
    //                                Image(systemName:"graduationcap.fill")
    //                                    .resizable()
    //                                    .frame(width:40,height:40)
    //                                    .foregroundColor(.white)
    //
    //                                Text("Class")
    //                                    .padding(.top,-5)
    //                                    .foregroundColor(.white)
    //                            }
    //                        }
    //
    //                        ZStack(){
    //                            Rectangle()
    //                                .frame(width:110,height: 80)
    //                                .cornerRadius(8)
    //                            VStack(){
    //                                Image(systemName:"exclamationmark.triangle.fill")
    //                                    .resizable()
    //                                    .frame(width:40,height:40)
    //                                    .foregroundColor(.white)
    //
    //                                Text("期中預警")
    //                                    .padding(.top,-5)
    //                                    .foregroundColor(.white)
    //                            }
    //                        }
    //
    //
    //
    //                    }
    //                    .foregroundColor(.secondary)
    //                    Text("Hello")
    //                }
    //               Spacer()
    //            }
    //
                Spacer()
            }
            .background(Image("BG"))
            //sheetBox()
        }
    }
    @ViewBuilder
    func searchPage() ->some View{
        Form(){
            Section(header:
                    Text("教務資訊")
                        .font(.system(size:18).bold())
                        .padding(.leading,-10))
            {
                ForEach(academicInfo,id: \.self){ index in
                    Button{
                        showSheet.toggle()
                    }label:{
                        HStack(){
                            // Image(systemName:"folder.fill")
                            Text(index)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color(customForegroundColor))
                        
                    }
                    
                }
            }
            Section(header:
                    Text("學務資訊")
                        .font(.system(size:18).bold())
                        .padding(.leading,-10))
            {
                ForEach(studentInfo,id: \.self){ index in
                    Button{
                        
                    }label:{
                        HStack(){
                            // Image(systemName:"folder.fill")
                            Text(index)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color(customForegroundColor))
                    }
                    
                }
            }
            Section(header:
                    Text("財務資訊")
                        .font(.system(size:18).bold())
                        .padding(.leading,-10))
            {
                ForEach(finacialInfo,id: \.self){ index in
                    Button{
                        
                    }label:{
                        HStack(){
                            // Image(systemName:"folder.fill")
                            Text(index)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color(customForegroundColor))
                    }
                    
                }
            }
        }
        .scrollContentBackground(.hidden)

    }
    
    @ViewBuilder
    func applyPage() ->some View{
        Form(){
            
            Section(header:
                    Text("學務資訊")
                        .font(.system(size:18).bold())
                        .padding(.leading,-10))
            {
                ForEach(studentInfo,id: \.self){ index in
                    Button{
                        
                    }label:{
                        HStack(){
                            // Image(systemName:"folder.fill")
                            Text(index)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color(customForegroundColor))
                    }
                    
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
    //@ViewBuilder
//    func sheetBox() -> some View{
//        ZStack(){
//            Rectangle()
//                .ignoresSafeArea()
//                .opacity(0.3)
//
//            Rectangle()
//                .fill(.white)
//                .frame(height:300)
//                .cornerRadius(10)
//                .padding(.horizontal)
//
//
//            HStack(){
//                Button{
//                    showSheet.toggle()
//                }label:{
//                    Image(systemName:"chevron.left")
//                        .font(.title3)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.secondary)
//                        .padding(.horizontal)
//                }
//                Spacer()
//
//                Button{
//
//                }label:{
//                    Text("Cancel")
//                        .font(.system(size:20).bold())
//                        .foregroundColor(.secondary)
//
//                }
//            }
//            .padding(.horizontal)
//        }
//
//    }
}

struct PersonalPageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalPageView()
            .previewDevice("iMac")
    }
}


struct customSection: View{
    var list:   String
    var index: String
    var body: some View {
        Text(list)
    }
}
