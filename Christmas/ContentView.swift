//
//  ContentView.swift
//  Christmas Countdown
//
//  Created by Lukas Robin on 22.10.2021.
//

import SwiftUI
//get the current year
func get_year() -> Int {
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year], from: date)
    let year = components.year
    return year!
}
//calculate days until christmas
func daysUntilChristmas() -> Int {
    let today = Date()
    let christmas = Calendar.current.date(from: DateComponents(year: get_year(), month: 12, day: 25))!
    let components = Calendar.current.dateComponents([.day], from: today, to: christmas)
    return components.day!
}
struct ContentView: View {
    var body: some View {
        let daysUT: Int = daysUntilChristmas();
        Text("\(daysUT) days until Christmas!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
