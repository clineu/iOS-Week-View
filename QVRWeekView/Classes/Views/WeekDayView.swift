//
//  WeekDayViewProtocol.swift
//  Pods-QVRWeekView_Example
//
//  Created by Clineu on 10/11/18.
//

import Foundation

class WeekDayView: UIView {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weekDaylabel: UILabel!
    @IBOutlet weak var dayLabelBgView: UIView!
    /// Main view container
    private(set) var mainView: UIView!
    /// Current date for view
    var date: DayDate? {
        didSet {
            setupView()
        }
    }
    /**
     Required init.
     */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setView()
    }
    /**
     Override frame init.
     */
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        dayLabelBgView.layer.cornerRadius = dayLabelBgView.frame.size.height/2
    }
    private func setView() {
        let bundle = Bundle(for: WeekDayView.self)
        let nib = UINib(nibName: "WeekDayView", bundle: bundle)
        mainView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        backgroundColor = UIColor.clear
        guard mainView != nil else {
            return
        }
        mainView.frame = self.bounds
        mainView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(self.mainView)
    }
    private func setupView() {
        dayLabel.font = TextVariables.dayLabelCurrentFont
        guard let date = date else {
            return
        }
        ///Color configuration
        let dayColor: UIColor!
        let weekDayColor: UIColor!
        let backgroundColor: UIColor!
        if date.isToday() {
            dayColor = TextVariables.dayLabelTodayTextColor
            weekDayColor = TextVariables.dayLabelTextColor
            backgroundColor = TextVariables.dayLabelTodayBackgroundColor
        } else if date.hasPassed() {
            dayColor = TextVariables.passedDayLabelTextColor
            weekDayColor = dayColor
            backgroundColor = TextVariables.passedDayLabelBackgroundColor
        } else {
            dayColor = TextVariables.dayLabelTextColor
            weekDayColor = dayColor
            backgroundColor = TextVariables.dayLabelBackgroundColor
        }
        dayLabel.textColor = dayColor
        weekDaylabel.textColor = weekDayColor
        dayLabelBgView.backgroundColor = backgroundColor
        //Text configuration
        weekDaylabel.text = date.getString(forMode: .narrowDayWeek)
        dayLabel.text = "\(date.day)"
    }
}
