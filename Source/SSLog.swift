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
    
    public static func mkLogString(_ logType:LogType = .action) -> String {
        var type = ""
        switch logType {
        case LogType.error:
            type += "📕Error"
        case LogType.warning:
            type += "📙Warning"
        case LogType.success:
            type += "📗Success"
        case LogType.action:
            type += "📘Action"
        case LogType.canceled:
            type += "📓Cancelled"
        }
        
        let result = type
        return result
    }
    
    public static func print(_ logType:LogType, _ Msg:String) {
        let typeText = "[" + mkLogString(logType) + "]: "
        let result = typeText +  Msg
        Swift.print(result)
    }
    
    public static func print2 (
        _ logType:LogType,
        _ Msg:String,
        _ file : String                = #file,
        _ function : String            = #function,
        _ line : Int                   = #line
        ) {

        let fileUrl                    = URL(fileURLWithPath: file)
        let fileName                   = fileUrl.deletingPathExtension().lastPathComponent
        let typeText = mkLogString(logType)
        var str                        = """
        [\(fileName) / \(function) / \(line) line / \(typeText)]:
        """
        str = str + " " + Msg
        Swift.print(str)
    }
    
    public static func print3 (
        _ logType:LogType,
        _ Msg:String,
        _ file : String                = #file,
        _ function : String            = #function,
        _ line : Int                   = #line
        ) {

        let fileUrl                    = URL(fileURLWithPath: file)
        let fileName                   = fileUrl.deletingPathExtension().lastPathComponent
        let typeText = mkLogString(logType)
        var str                        = """
        [fileUrl: \(fileUrl)
        fileName: \(fileName)
        function: \(function)
        line: \(line)
        \(typeText)]:
        """
        str = str + " " + Msg
        Swift.print(str)
    }
    
//    public static func print2 (
//        _ logType:LogType,
//        _ Msg:String,
//        header : String                = "",
//        _ file : String                = #file,
//        _ function : String            = #function,
//        _ line : Int                   = #line,
//        _ dsohandle : UnsafeRawPointer = #dsohandle
//        ) {
//
//        let fileUrl                    = URL(fileURLWithPath: file)
//        let fileName                   = fileUrl.deletingPathExtension().lastPathComponent
//        let header                     = header.isEmpty ? "" : "[ \(header) ] - "
//
//        let str                        = """
//        👻👻👻
//        \(fileName) / \(header) / \(function)
//        👻👻👻
//        """
//        Swift.print(str)
//    }
}

