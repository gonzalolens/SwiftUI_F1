//
//  DriverRow.swift
//  01-MiPrimeraAppGL
//
//  Created by Gonzalo Lens on 12/9/19.
//  Copyright © 2019 Gonzalo Lens. All rights reserved.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    var body: some View {
        
        HStack {
            //Image("hamilton")
            Image(driver.imageName)
                .resizable().scaledToFit()
                .frame(width:90, height:90)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)
                
                            
            //Text("Lewis Hamilton")
            Text(driver.name)
                .font(.title)
            
            Spacer()
        }
        
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        //Cambio el tamaño de la vista.
        VStack{
            DriverRow(driver: drivers[0])
            
            DriverRow(driver: drivers[1])
            
            DriverRow(driver: drivers[2])
            
            DriverRow(driver: drivers[3])
            
            DriverRow(driver: drivers[4])

            DriverRow(driver: drivers[5])

           DriverRow(driver: drivers[6])
            
            
       //        .previewLayout(.fixed(width: 450, height: 70))
 
        }
        .previewDevice("iPhone SE")
        .previewDisplayName("iPhone SE")
          
    }
}
