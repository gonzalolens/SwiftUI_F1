//
//  DriversList.swift
//  01-MiPrimeraAppGL
//
//  Created by Gonzalo Lens on 12/11/19.
//  Copyright © 2019 Gonzalo Lens. All rights reserved.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView{
            List(drivers) {
                driver in
                //Esto quedo fuera de uso por Apple. No se usa mas
                //NavigationButton(destination: ContentView()){
                
                NavigationLink(destination: DriverDetail(driver: driver) ){
                    
                    DriverRow(driver: driver).fixedSize() 
                    
                }
        
            }.navigationBarTitle(Text("Formula 1 - 2019"), displayMode: .large)
        
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
