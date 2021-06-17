//
//  SSLog.swift
//  Pods
//
//  Created by 장은석 on 2021/06/17.
//

import Foundation

public enum LogType: String{
    case error
    case warning
    case success
    case action
    case canceled
}

public class SSLog {
    public static func print(_ logType:LogType, _ Msg:String) {
        var type = ""
        switch logType {
        case LogType.error:
            type += "[📕Error]: "
        case LogType.warning:
            type += "[📙Warning]: "
        case LogType.success:
            type += "[📗Success]: "
        case LogType.action:
            type += "[📘Action]: "
        case LogType.canceled:
            type += "[📓Cancelled]: "
        }
        let result = type + Msg
        Swift.print(result)
    }
}

