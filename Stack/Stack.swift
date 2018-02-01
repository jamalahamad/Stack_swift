//
//  Stack.swift
//  Stack
//
//  Created by Jamal Ahamad on 01/02/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import Foundation

class Stack{
    
    var stackArray:[Int] = []
    
    func pushOperation(element:Int){
        
        stackArray.append(element)
    }
    
    func popOperation()->Int{
        
        if stackArray.count>0{
            
            let last = stackArray.remove(at: stackArray.last!)
            return last
        }else {
            
            return 0
        }
    }
}

class GenericStack <T>{
    
    var arrayStack : [T] = []
    
    func pushOperationGen(element:T){
        
        arrayStack.append(element)
    }
    
    func popOperationGen()->T{
        
        if arrayStack.count>0{
           
            let item = arrayStack.removeLast()
            return item
            
        }else {
            
            return "nothing to return" as! T
        }
    }
}

class LinkNode{
    
    var value : Int? = nil
    var next : LinkNode? = nil
   
}

class StackImplementation{
    
    var head = LinkNode()
    
    func pushOperation(element : Int){
       
        if head.value == nil{
            
            head.value = element
        }
        else {
            
            var current = head
            
            while current.next != nil{
                
                current = current.next!
                
            }
            let newNode = LinkNode()
            newNode.value = element
           current.next = newNode
        }
    }
    
    func popOperation()->Int{
        
        var current = head
        var prev = LinkNode()
        while current.next != nil {
            prev = current
            current = current.next!
        }
        prev.next = nil
        
        return current.value!
    }
    
    func printStack(){
        
        var current: LinkNode! = self.head
        while current != nil && current.value != nil {
            print("The item is \(current.value!)")
            current = current.next
        }
    }
}




