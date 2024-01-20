//
//  ContentView.swift
//  sutest
//
//  Created by José Valderrama on 20/01/2024.
//

import SwiftUI

struct ContentView: View {
    let data = [1, 2, 3, 4, 5]
    let imagenInternet = URL(string: "https://yt3.googleusercontent.com/ytc/AIf8zZTE3HOyhw2n_5fWv7BAqh3pHzCe4_-Vyfl5KWxkeA=s900-c-k-c0x00ffffff-no-rj")
    @State var textoQueVoyEscribiendo = "que pasa puee"
    @State var isActive = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .overlay(
                        AsyncImage(url: imagenInternet, content: { image in
                            image
                                .resizable()
                        }, placeholder: {
                            Text("as")
                        })
                        //                    AsyncImage(url:imagenInternet, content: { image in
                        //                        image.resizable()
                        //                    }, placeholder: ProgressView())
                    )
                HStack(spacing: 0) {
                    Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Rectangle().foregroundColor(.red)
                    Rectangle().foregroundColor(.yellow)
                    Rectangle().foregroundColor(.orange)
                }
                List {
                    ForEach(data, id: \.self) { rectangle in
                        HStack {
                            Text("\(rectangle)")
                            Spacer()
                            AsyncImage(url: imagenInternet, content: { image in
                                image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }, placeholder: {
                                Text("as")
                            })
                            .padding(.trailing, 10)
                        }
                    }
                }
                .listStyle(.plain)
                
                Text("contador de caracteres: \(textoQueVoyEscribiendo.count)")
                Button(action: {
                    isActive.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
                if isActive {
                    TextField("carga algo", text: $textoQueVoyEscribiendo)
                } else {
                    TextField("carga algo", text: $textoQueVoyEscribiendo)
                        .background(.red)
                    
                    
                    
                    ZStack {
                        Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("estoy dentro")
                            .font(.largeTitle)
                            .background(.red)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
