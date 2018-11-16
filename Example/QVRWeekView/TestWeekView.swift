//
//  TestWeekView.swift
//  QVRWeekView
//
//  Created by Reinert Lemmens on 7/22/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import QVRWeekView

class TestWeekView: WeekView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        mainBackgroundColor = UIColor(red: 0.92, green: 0.9, blue: 0.92, alpha: 1)
        hourLabelDateFormat = "HH:mm"
        visibleDaysInPortraitMode = 3
        sideBarWidth = 50
        defaultTopBarHeight = 80
        dayViewDashedSeparatorThickness = 0
        eventLabelVerticalTextPadding = 8
        eventLabelHorizontalTextPadding = 8
        portraitDayViewVerticalSpacing = 0
        sideBarColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        sideBarSeparatorColor = UIColor(red: 0.92, green: 0.9, blue: 0.92, alpha: 1)
        topBarColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        hourLabelTextColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        hourLabelFont = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.regular)
        //Day view separator
        dayViewMainSeparatorColor = UIColor(red: 0.92, green: 0.9, blue: 0.92, alpha: 1)
        dayViewMainSeparatorThickness = 0.5
        portraitDayViewSideSpacing = 1.0
        //Today
        todayViewColor = UIColor(red: 244.0/255.0, green: 234.0/255.0, blue: 240.0/255.0, alpha: 1)
        dayViewHourIndicatorColor = UIColor(red: 0.71, green: 0.42, blue: 0.67, alpha: 1)
        dayViewHourIndicatorThickness = 1
        //Day colors
        weekendDayViewColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        defaultDayViewColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        passedWeekendDayViewColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        passedDayViewColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        //Week day configuration
        passedDayLabelTextColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        passedDayLabelBackgroundColor = UIColor.clear
        dayLabelTodayTextColor = UIColor.white
        dayLabelTodayBackgroundColor = UIColor(red: 0.54, green: 0.28, blue: 0.55, alpha: 1)
        dayLabelTextColor = UIColor.darkGray
        dayLabelBackgroundColor = UIColor.clear
    }
}
