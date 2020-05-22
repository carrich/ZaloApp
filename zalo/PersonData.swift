//
//  PersonData.swift
//  zalo
//
//  Created by Ngoduc on 5/22/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import Foundation
class PersonData{
    func getListPerson() -> [Person]{
        let list = [Person(image: "1", name: "Xe đưa đón", message: "Lên xe chưa cô", time: "1 hour"),
        Person(image: "2", name: "Hỏi Bài Lớp Di Động ", message: "Mọi người có ai tham gia không", time: "12 hour"),Person(image: "3", name: "Thực tập di động 4", message: "Lên lịch học tập trung", time: "6 days"),Person(image: "4", name: "Lớp học của con", message: "Bài tập về nhà", time: "1 hour"),Person(image: "5", name: "UX tối", message: "Nghỉ học", time: "11 hour")]
        return list
    }
}
