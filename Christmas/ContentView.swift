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
func get_month() -> Int {
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.month], from: date)
    let month = components.month
    return month!
}
func get_day_date() -> Int {
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: date)
    let day = components.day
    return day!
}
//calculate days until christmas
func daysUntilChristmas() -> Int {
    let today = Date()
    let christmas = Calendar.current.date(from: DateComponents(year: get_year(), month: 12, day: 25))!
    let components = Calendar.current.dateComponents([.day], from: today, to: christmas)
    return components.day!
}
func KaitlynBday() -> Int {
    let today = Date()
    let month = 3; let bdayday = 7; var message: Int = 1
    if (get_month() <= month && get_day_date() < bdayday){
        let bday = Calendar.current.date(from: DateComponents(year: get_year(), month: 3, day: 7))!
        let components = Calendar.current.dateComponents([.day], from: today, to: bday)
        message = (components.day!)
    }
    else if (get_month() >= month && get_day_date() > bdayday){
        let bday = Calendar.current.date(from: DateComponents(year: get_year()+1, month: 3, day: 7))!
        let components = Calendar.current.dateComponents([.day], from: today, to: bday)
        message = (components.day!)
    }
    else if (get_month() == month && get_day_date() == bdayday){
        message = 0
    }
    return message
}
func DayOfKaitlynBday() -> String{
    if  (KaitlynBday() == 0){
        return "Happy birthday my love\n -Lukas <3"
    }
    else {
        return "\(KaitlynBday()) days until your birthday!"
    }
}

struct ContentView: View {
    var body: some View {
        let daysUT: String = DayOfKaitlynBday();
        Text("\(daysUT)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
