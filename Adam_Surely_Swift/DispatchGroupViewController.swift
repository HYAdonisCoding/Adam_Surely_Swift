//
//  DispatchGroupViewController.swift
//  Adam_Surely_Swift
//
//  Created by Adam on 2021/3/24.
//

import Foundation

class DispatchGroupViewController: BaseViewController {
    
    override func configEvent() {
        super.configEvent()
        
        testDispatchGroup()
    }
    
    override func configUI() {
        super.configUI()
    }
    
    func testDispatchGroup() {
        let group = DispatchGroup()
        let queue = DispatchQueue(label: "Test_Queue", qos: .background)
        
//        queue.async {
//            print("work 1")
//            group.enter()
//            sleep(4)
//            print("work 1 finished")
//            group.leave()
//        }
//
//        work("1", queue: queue, group: group)
        for i in 0...100 {
//            print(i)
            queue.async { [self] in
                work(String(i), queue: queue, group: group)
            }
        }
        group.notify(queue: queue) {
            print("coming")
        }
    }
    
    func work(_ name: String, queue: DispatchQueue, group: DispatchGroup) {
//        queue.async {
            print("work \(name)")
            group.enter()
            sleep(1)
            print("work \(name) finished")
            group.leave()
//        }
    }
}
