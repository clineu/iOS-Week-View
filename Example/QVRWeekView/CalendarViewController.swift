//
//  ViewController.swift
//  QVRWeekView
//
//  Created by reilem on 05/17/2017.
//  Copyright (c) 2017 reilem. All rights reserved.
//

import QVRWeekView
import UIKit

public var autoFillEvents = false

class CalendarViewController: UIViewController, WeekViewDelegate {

    var allEvents: [Int: EventData] = [:]
    var eventsSortedByDay: [Date: [EventData]] = [:]
    var id: Int = 0

    @IBOutlet var weekView: WeekView!

    @IBAction func todayButtonPress(_ sender: Any) {
        weekView.showToday()
    }

    @IBAction func testButtonPress(_ sender: Any) {
        let df = DateFormatter()
        df.dateFormat="yyyy-MM-dd|HH:mm:ss"
        let date = df.date(from: "2017-12-25|17:15:06")!
        weekView.showDay(withDate: date, showTime: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        weekView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func didLongPressDayView(in weekView: WeekView, atDate date: Date) {
        let alert = UIAlertController(title: "Long pressed \(date.description(with: Locale.current))",
                                      message: nil,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Laura Green Gradient", style: .default, handler: { _ in
            let color = UIColor(red:0.26, green:0.9, blue:0.58, alpha:1)
            let newEvent = EventData(id: "\(self.id)",
                                     title: "Consulta com obstreta",
                                     startDate: date,
                                     endDate: date.addingTimeInterval(60*60*1),
                                     location: "",
                                     color: color,
                                     allDay: false,
                                     titleColor: UIColor.white,
                                     showEventTime: false)
            newEvent.configureGradient(UIColor(red:0.23, green:0.7, blue:0.72, alpha:1))
            self.allEvents[self.id] = newEvent
            self.id += 1
            weekView.loadEvents(withData: Array(self.allEvents.values))
        }))
        alert.addAction(UIAlertAction(title: "Laura Red Gradient", style: .default, handler: { _ in
            let color = UIColor(red:0.66, green:0, blue:0.38, alpha:1)
            let newEvent = EventData(id: "\(self.id)",
                                     title: "Exame para anticorpos",
                                     startDate: date,
                                     endDate: date.addingTimeInterval(60*60*1),
                                     location: "",
                                     color: color,
                                     allDay: false,
                                     titleColor: UIColor.white,
                                     showEventTime: false)
            newEvent.configureGradient(UIColor(red:0.94, green:0.31, blue:0.14, alpha:1))
            self.allEvents[self.id] = newEvent
            self.id += 1
            weekView.loadEvents(withData: Array(self.allEvents.values))
        }))
        alert.addAction(UIAlertAction(title: "Laura White", style: .default, handler: { _ in
            let color = UIColor.white
            let newEvent = EventData(id: "\(self.id)",
                                     title: "Fisioterapia - Dr. Alex Ramos",
                                     startDate: date,
                                     endDate: date.addingTimeInterval(60*60*1),
                                     location: "",
                                     color: color,
                                     allDay: false,
                                     titleColor: UIColor.black,
                                     showEventTime: false)
            self.allEvents[self.id] = newEvent
            self.id += 1
            weekView.loadEvents(withData: Array(self.allEvents.values))
        }))
        alert.addAction(UIAlertAction(title: "Laura Purple", style: .default, handler: { _ in
            let color = UIColor(red:0.54, green:0.28, blue:0.55, alpha:1)
            let newEvent = EventData(id: "\(self.id)",
                                     title: "Consulta com a Dra. Clara",
                                     startDate: date,
                                     endDate: date.addingTimeInterval(60*60*1),
                                     location: "",
                                     color: color,
                                     allDay: false,
                                     titleColor: UIColor.white,
                                     showEventTime: false)
            //newEvent.configureGradient(UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0))
            self.allEvents[self.id] = newEvent
            self.id += 1
            weekView.loadEvents(withData: Array(self.allEvents.values))
        }))
//        alert.addAction(UIAlertAction(title: "Short Gradient", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(id: self.id,
//                                     title: "Test Event \(self.id)",
//                                     startDate: date,
//                                     endDate: date.addingTimeInterval(60*60*1),
//                                     location: "loc test",
//                                     color: color)
//            newEvent.configureGradient(UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0))
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Short", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(id: self.id,
//                                     title: "Test Event \(self.id)",
//                                     startDate: date,
//                                     endDate: date.addingTimeInterval(60*60*1),
//                                     location: "loc test",
//                                     color: color)
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Medium", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(id: self.id,
//                                     title: "Test Event \(self.id)",
//                                     startDate: date,
//                                     endDate: date.addingTimeInterval(60*60*3),
//                                     location: "loc test",
//                                     color: color)
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Long", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(id: self.id,
//                                     title: "Test Event \(self.id)",
//                                     startDate: date,
//                                     endDate: date.addingTimeInterval(60*60*4),
//                                     location: "loc test",
//                                     color: color)
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Very long", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(
//                id: self.id,
//                title: "Test Event \(self.id)",
//                startDate: date,
//                endDate: date.addingTimeInterval(60*60*24*3),
//                location: "loc test",
//                color: color
//            )
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Single all day", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(
//                id: self.id,
//                title: "Test Event \(self.id)",
//                startDate: date.getStartOfDay(),
//                endDate: date.getEndOfDay(),
//                location: "loc test",
//                color: color,
//                allDay: true
//            )
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
//        alert.addAction(UIAlertAction(title: "Multi all day", style: .default, handler: { _ in
//            let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
//            let newEvent = EventData(
//                id: self.id,
//                title: "Test Event \(self.id)",
//                startDate: date.getStartOfDay(),
//                endDate: date.addingTimeInterval(60*60*24*2.5),
//                location: "loc test",
//                color: color,
//                allDay: true
//            )
//            self.allEvents[self.id] = newEvent
//            self.id += 1
//            weekView.loadEvents(withData: Array(self.allEvents.values))
//        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
            weekView.redrawEvents()
        }))

        self.present(alert, animated: true, completion: nil)

    }

    func didTapEvent(in weekView: WeekView, withId eventId: String) {
        let alert = UIAlertController(title: "Tapped event", message: "\(eventId)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Change color", style: .default, handler: { (_) in
            let id = Int(eventId)!
            let event = self.allEvents[id]!
            let newEvent = event.remakeEventData(withColor: UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0))
            self.allEvents[id] = newEvent
            weekView.loadEvents(withData: Array(self.allEvents.values))
        }))
        alert.addAction(UIAlertAction(title: "Remove", style: .destructive, handler: { (_) -> Void in
            self.allEvents[Int(eventId)!] = nil
            self.eventsSortedByDay.removeAll()
            for event in Array(self.allEvents.values) {
                let date = event.startDate.getDayValue()
                if self.eventsSortedByDay[date] == nil {
                    self.eventsSortedByDay[date] = [event]
                }
                else {
                    self.eventsSortedByDay[date]?.append(event)
                }
            }

            weekView.loadEvents(withData: Array(self.allEvents.values))

        }))
        self.present(alert, animated: true, completion: nil)
    }

    func eventLoadRequest(in weekView: WeekView, between startDate: Date, and endDate: Date) {

        let dates = DateSupport.getAllDates(between: startDate, and: endDate)

        for (date, events) in eventsSortedByDay where !dates.contains(date) {
            for event in events {
                allEvents[Int(event.id)!] = nil
            }
            eventsSortedByDay[date] = nil
        }

        if autoFillEvents {
            for date in dates where eventsSortedByDay[date] == nil {
                var dateEvents: [EventData] = []
                let n = Int(drand48()*25)
                let startOfDate = date.getStartOfDay()
                for _ in 0...n {
                    let hourDuration = Double(Int(drand48()*4)+1)
                    let hourStart = drand48()*21
                    let eventStartOffset = Int((hourStart)*60.0*60.0)
                    let eventEndOffset = eventStartOffset+Int(hourDuration*60.0*60.0)

                    let start = dateWithInterval(eventStartOffset, fromDate: startOfDate)
                    let end = dateWithInterval(eventEndOffset, fromDate: startOfDate)

                    let title = "Test+\(id):TextTest TextTest TextTest TextTest TextTest"
                    let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)

                    let data = EventData(id: id, title: title, startDate: start, endDate: end, color: color, titleColor: UIColor.white)
                    allEvents[id] = data
                    dateEvents.append(data)
                    id += 1
                }
                eventsSortedByDay[date] = dateEvents
            }
        }
        weekView.loadEvents(withData: allEvents.isEmpty ? nil : Array(allEvents.values))
    }

    func activeDayChanged(in weekView: WeekView, to date: Date) {
        // OPTIONAL
    }

    private func dateWithIntervalFromNow(_ interval: Int) -> Date {
        return Date(timeIntervalSinceNow: TimeInterval(exactly: interval)!)
    }

    private func dateWithInterval(_ interval: Int, fromDate date: Date) -> Date {
        return date.addingTimeInterval(TimeInterval(exactly: interval)! )
    }

}
