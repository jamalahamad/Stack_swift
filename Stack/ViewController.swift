//
//  ViewController.swift
//  Stack
//
//  Created by Jamal Ahamad on 01/02/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
 //       let stack = Stack()
//        stack.pushOperation(element: 5)
//        stack.pushOperation(element: 10)
//        stack.pushOperation(element: 4)
//        stack.pushOperation(element: 3)
        
//        let stacks = GenericStack<String>()
//        stacks.pushOperationGen(element: "one")
//        stacks.pushOperationGen(element: "three")
//        stacks.pushOperationGen(element: "five")
//        stacks.pushOperationGen(element: "eight")
//
//        print(stacks.arrayStack)
//       let pop =  stacks.popOperationGen()
//        print(stacks.arrayStack)
//        print(pop)
        
        
        let stackLink = StackImplementation()
        stackLink.pushOperation(element: 5)
        stackLink.pushOperation(element: 6)
        stackLink.pushOperation(element: 8)
        stackLink.pushOperation(element: 4)
        stackLink.printStack()
        let pop = stackLink.popOperation()
        print(pop)
        stackLink.printStack()
    }


}

