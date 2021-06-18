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

public enum LogMode: Int{
    case basic
    case detail
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
        
        let result = type +  Msg
        Swift.print(result)
    }
    
    public static func print2 (
        _ contents: Any...,
        header : String                = "",
        _ file : String                = #file,
        _ function : String            = #function,
        _ line : Int                   = #line,
        _ dsohandle : UnsafeRawPointer = #dsohandle
        ) {

        let fileUrl                    = URL(fileURLWithPath: file)
        let fileName                   = fileUrl.deletingPathExtension().lastPathComponent
        let header                     = header.isEmpty ? "" : "[ \(header) ] - "
        let content                    = contents.reduce("") { $0 + " " + String(describing: $1) }

        let str                        = """
        👻👻👻
        \(fileName) / \(header) / \(function)
        \(content)
        👻👻👻
        """

        Swift.print(str)
    }
}

