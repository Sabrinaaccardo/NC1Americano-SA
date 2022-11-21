//
//  Extensions.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 21/11/22.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
