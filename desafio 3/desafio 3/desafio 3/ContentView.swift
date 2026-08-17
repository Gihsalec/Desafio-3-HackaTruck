//
//  ContentView.swift
//  desafio 3
//
//  Created by Turma01-5 on 22/04/26.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Int = 0
    @State private var tempo: Int = 0
    @State private var velocidade: Double = 0.00
    @State private var img: String = " "
    @State private var cor: String = " "
    var body: some View {
        ZStack{
            Color(cor)
                .ignoresSafeArea()
            
            VStack (alignment: .center){
                Spacer()
                    .frame(width:0,height:120)
                
                Text("Digite a distancia")
                    .frame(width:200,height:0)
                TextField("Digite a distancia", value: $distancia, format: .number)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .frame(width:300,height:80)
                
                Text("Digite o tempo")
                    .frame(width:200,height:0)
                TextField("Digite o tempo", value: $tempo, format: .number)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .frame(width:300,height:80)
                
                Button(action:{
                    self.velocidade = Double(distancia)/Double(tempo)
                    
                    if velocidade < 10 {
                        img = "tartaruga"
                        cor = "Cor verde"
                    }else if velocidade < 30 {
                        img = "elefante"
                        cor = "Cor azul claro"
                    }else if velocidade < 70 {
                        img = "avestruz"
                        cor = "Cor laranja"
                    }else if velocidade < 90 {
                        img = "leao"
                        cor = "Cor amarelo"
                    }else if velocidade < 131 {
                        img = "guepardo"
                        cor = "Cor vermelha"
                    }
                    
                }) {
                    Text("Calcular")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.black)
                        .cornerRadius(10)
                    
                }
                
                Spacer()
                    .frame(width:0,height:40)
                
                Text("\(String (format: "%.2f",velocidade)) km/h")
                    .frame(width:200,height:0)
                    .font(.system(size: 30))
                
                Spacer()
                    .frame(width:0,height:30)
                
                Image(img)
                    .resizable()
                    .scaledToFill()
                    .frame(width:250,height:250)
                    .clipShape(Circle())
                
                Spacer()
                    .frame(width:0,height:10)
            
                Text("TARTARUGA         (0 - 9.9km/h) \nELEFANTE             (10 - 29.9km/h) \nAVESTRUZ            (30 - 69.9km/h) \nLEAO                       (70 - 89.9km/h) \nGUEPARDO           (90 - 130km/h)")
                    .foregroundStyle(.white)
                    .frame(width:350,height:200)
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 21))
                
                Spacer()
                    .frame(width:0,height:110)
            }
        }
        
    }
}

#Preview {
    ContentView()
}

