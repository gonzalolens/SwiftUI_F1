//
//  DriverDetail.swift
//  01-MiPrimeraAppGL
//
//  Created by Gonzalo Lens on 12/2/19.
//  Copyright © 2019 Gonzalo Lens. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    
    var driver : Driver
    
    var body: some View {
        VStack {
            //Image("car_mercedes")
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 230.0)
            
            //Image("hamilton")
            Image(driver.imageName)
                .resizable()
                .frame(width: 130.0, height: 130.0)
                .clipShape(Circle())    //Para que la imagen quede dentro de un circulo
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x:0,y:-65)
                .padding(.bottom, -60)
            
            //Text("Lewis Hamilton")
            Text(driver.name)
                .font(.system(size: 45 ))
                .fontWeight(.bold)
                //.minimumScaleFactor(0.5)
                .minimumScaleFactor(0.8)

            //Ahora invoco por cada linea a mostrar al StatsRow()
            StatsRow(statKey: "Edad", statValue: String(driver.age))
            
            StatsRow(statKey: "Numero", statValue: String(driver.number))
            
            StatsRow(statKey: "Origen", statValue: driver.birthPlace)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)   //Ignoro zona segura de arriba (donde esta la barra)
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            
            DriverDetail(driver: drivers[0])
                .previewDevice("iPhone 11 Pro Max")
                .previewDisplayName("iPhone 11 Prox Max")

            DriverDetail(driver: drivers[0])
                .previewDevice("iPhone SE")
            .previewDisplayName("iPhone SE")

            
        }
    }
}
