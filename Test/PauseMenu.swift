////
////  PauseMenu.swift
////  Test
////
////  Created by Arteezy on 2/13/22.
////
//
//import SwiftUI
//
//struct PauseMenu: View {
//    var body: some View {
//        pauseMenu
//    }
//    
//    var pauseMenu: some View {
//        VStack{
//                        
//            HStack{
//                
//                Text("Pause")
//                    .bold()
//                    .font(.largeTitle)
//                    .padding()
//                    .foregroundColor(.blue)
//                
//                Spacer()
//                userEnergy
//                
//                
//            }
//            HStack{
//                Spacer()
//                
//                VStack{
//                    Image("play")
//                        .resizable()
//                        .frame(width: 50, height: 50, alignment: .center)
//                }
//                .padding()
//                .background(Color .sharkBlue)
//                .cornerRadius(10)
//                
//                Spacer()
//                
//                VStack{
//                    Image("home")
//                        .resizable()
//                        .frame(width: 50, height: 50, alignment: .center)
//                    
//                }
//                .padding()
//                .background(Color .sharkBlue)
//                .cornerRadius(10)
//                
//                
//                Spacer()
//                
//            }
//            Spacer()
//            
//            HStack{
//                
//                Spacer()
//                
//                VStack{
//                    Image("restart")
//                        .resizable()
//                        .frame(width: 50, height: 50, alignment: .center)
//                    
//                    HStack(spacing: 0){
//                        Image("bolt")
//                            .resizable()
//                            .frame(width: 20, height: 20, alignment: .center)
//                        Text("x5")
//                            .bold()
//                            .foregroundColor(.white)
//                    }
//                }
//                .padding()
//                .background(Color .sharkBlue)
//                .cornerRadius(10)
//                
//                
//                Spacer()
//                
//                VStack{
//                    Image("restart")
//                        .resizable()
//                        .frame(width: 50, height: 50, alignment: .center)
//                    
//                    HStack(spacing: 5){
//                        Image("playVideo")
//                            .resizable()
//                            .frame(width: 20, height: 20, alignment: .center)
//                        Text("Ad")
//                            .bold()
//                            .foregroundColor(.white)
//                    }
//                }
//                .padding()
//                .background(Color .sharkBlue)
//                .cornerRadius(10)
//                
//                Spacer()
//                
//
//            }
//            
//            Spacer()
//            
//        }
//        .frame(width: UIScreen.main.bounds.width-30, height: 350, alignment: .center)
//
//
//    }
//    
//    var userEnergy: some View {
//        HStack{
//            Image("bolt")
//                .resizable()
//                .frame(width: 27.5, height: 27.5, alignment: .center)
//                .clipShape(Circle())
//            Text("30")
//                .foregroundColor(.white)
//                .bold()
//                .padding([.horizontal],20)
//                .padding([.vertical],5)
//                .background(Color .customGreen)
//                .cornerRadius(5)
//        }
//        .padding()
//    }
//}
//
//
//
//struct PauseMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        PauseMenu()
//    }
//}
