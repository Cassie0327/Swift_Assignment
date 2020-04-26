//
//  Infomation.swift
//  Final
//
//  Created by 蔡倩 on 12/12/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import Foundation
import UIKit
import CoreData
func begin()
{

  let app = UIApplication.shared.delegate as! AppDelegate
    let contexts = app.persistentContainer.viewContext
    
   
    
    let entityName2 = "Course"
    let c1 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
    c1.course_id="6205"
    c1.course_name="Program Structure and Algorithms"
    c1.seat = 20
    c1.waitlist = 10
    c1.instructor="Ghassemi,Mohsen"
    c1.hour=4
    c1.subject="Infomation system engineering"
    c1.time="Monday"+"18:00-22:00"
    
    c1.position="225 Terry Ave | Room 307"
        c1.course_description="Presents data structures and related algorithms, beginning with a brief review of dynamic memory allocation. Discusses the fundamental data structures in detail, including the abstract representation, supporting algorithms, and implementation methods. Focuses on understanding the application of the abstract data structure and the circumstances that affect implementation decisions. Covers lists, stacks, queues, trees, hash tables, and graphs. Covers recursion and searching and sorting algorithms in detail. Emphasizes data abstraction and encapsulation in code design. Explores external storage structures, time permitting."
    
    
    let c2 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
    c2.course_id="6350"
    c2.course_name="Smartphones-Based Web Development"
    c2.seat = 23
    c2.waitlist = 10
    c2.instructor="Ahmed,Rabah"
    c2.hour=4
    c2.subject="Infomation system engineering"
    c2.time="Saturday"+"1:00-4:00"
    
    c2.position="Richards Hall | Room 236"
        c2.course_description="Covers application development for mobile devices using advanced development platforms. Focuses on how to write mobile applications using cross-platform development tools and processes. Topics include user interfaces, the software life cycle, persistent storage, networking using HTTP and other REST interfaces, and mobile/handheld data applications. Requires a final project."
    
    let c3 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
    c3.course_id="6105"
    c3.course_name="Data Science Engineering Methods and Tools"
    c3.seat = 23
    c3.waitlist = 10
    c3.instructor="Liu,Handan"
    c3.hour=4
    c3.subject="Infomation system engineering"
    c3.time="Tuesday"+"9:00-13:00"
    
    c3.position="Behrakis Health Sciences Cntr | Room 315"
        c3.course_description="Introduces the fundamental techniques for machine learning and data science engineering. Discusses a variety of machine learning algorithms, along with examples of their implementation, evaluation, and best practices. Lays the foundation of how learning models are derived from complex data pipelines, both algorithmically and practically. Topics include supervised learning (parametric/nonparametric algorithms, support vector machines, kernels, neural networks, deep learning) and unsupervised learning (clustering, dimensionality reduction, recommender systems). Based on numerous real-world case studies."
    
    let c4 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c4.course_id="6255"
       c4.course_name="Software Quality Control and Management"
       c4.seat = 30
       c4.waitlist = 8
       c4.instructor="Servattalab,Matthew "
       c4.hour=4
       c4.subject="Infomation system engineering"
       c4.time="Thursday"+"10:00-14:00"
    
    c4.position="Knowles Center | Room 002B"
        c4.course_description="Examines techniques for the management and evolution of software systems. Topics include managing software as an asset; life cycle development and rapid development technologies; maintainability; quality assurance of software systems including testing strategies and problem analysis; software risk analysis; analysis of software project failures; process models, such as CMM and ISO 9001; configuration management; and the impact of new development technologies on software management."
    
    let c5 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c5.course_id="6250"
       c5.course_name="Web Development Tools and Methods"
       c5.seat = 29
       c5.waitlist = 10
       c5.instructor="Ritter,Brett"
       c5.hour=4
       c5.subject="Infomation system engineering"
       c5.time="Friday"+"18:00-22:00"
            
    c5.position="Behrakis Health Sciences | Room 325"
        c5.course_description="Introduces object-oriented design and programming via the Java programming language; the use of inheritance, composition, and interface classes in software design; development of Java applets and applications; study of the Java class libraries, including the swing tool kit for building human computer interfaces, the network package for development of client-server systems, and the collections&#8217; package for data structures and sorting algorithms. Requires a course project. Requires knowledge of C programming."
    
    let c6 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c6.course_id="6200"
       c6.course_name="Concepts of Object-Oriented Design"
       c6.seat = 28
       c6.waitlist = 10
       c6.instructor="Munson,Mark"
       c6.hour=4
       c6.subject="Computer system engineering"
       c6.time="Monday"+"18:00-22:00"
    c6.position="Behrakis Health Sciences | Room 325"
    c6.course_description="Introduces object-oriented design and programming via the Java programming language; the use of inheritance, composition, and interface classes in software design; development of Java applets and applications; study of the Java class libraries, including the swing tool kit for building human computer interfaces, the network package for development of client-server systems, and the collections&#8217; package for data structures and sorting algorithms. Requires a course project. Requires knowledge of C programming."
    
    let c7 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c7.course_id="6225"
       c7.course_name="Network Structures and Cloud Computing"
       c7.seat = 26
       c7.waitlist = 10
       c7.instructor="Parikh,Tejas"
       c7.hour=4
       c7.subject="Computer system engineering"
       c7.time="Saturday"+"18:00-22:00"
       c7.position="225 Terry Ave | Room 402"
      c7.course_description="Offers a practical foundation in cloud computing and hands-on experience with the tools used in cloud computing. Designed as a foundation course for cloud-aware, adept professionals. Focuses on the fundamentals of cloud computing, the principal areas of cloud architectures, cloud security, cloud governance, cloud storage, cloud virtualization, and cloud capacity. Discusses the Internet evolution that led to cloud and how cloud applications revolutionized Web applications."
    
    let c8 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c8.course_id="7200"
       c8.course_name="Big-Data System Engineering Using Scala"
       c8.seat = 30
       c8.waitlist = 4
       c8.instructor="Hillyard, Robin"
       c8.hour=4
       c8.subject="Computer system engineering"
       c8.time="Saturday"+"18:00-22:00"
    c8.position="West Village H | Room 108"
     c8.course_description="Covers the fundamentals of functional programming with Scala and seeks to provide a basic, practical foundation for students who want to use it as a language for working with big-data platforms. Scala is one of a new breed of general-purpose functional programming languages that is strongly typed and is object oriented. It runs on the Java virtual machine and is able to share libraries from the vast collection of open-source projects written in Java. For these reasons it is readily accessible by programmers of Java, C++, and similar languages."
    
    let c9 = NSEntityDescription.insertNewObject(forEntityName: entityName2, into: contexts) as! Course
       c9.course_id="6350"
       c9.course_name="Deployment and Operation of Software Applications"
       c9.seat = 30
       c9.waitlist = 6
       c9.instructor="Konstantopoulos, Constantin"
       c9.hour=4
       c9.subject="Computer system engineering"
       c9.time="Thursday"+"11:00-15:00"
    
    c9.position="Behrakis Health Sciences Cntr | Room 320"
     c9.course_description="Introduces the four most popular infrastructure languages—Chef, Puppet, Ansible, and Salt— and codes with them in the same way that we code with Java, Python, C#, and Javascript. IT infrastructure languages and their underlying methods and tools, referred to as DevOps, bridge the gap between software development and software administration. Instead of recruiting CPU cycles on our laptops, we create and manage virtual IT infrastructures on a public cloud. Offers students an opportunity to learn how to manipulate virtual machines, containers, and lambdas and set up assembly lines on public clouds in the fashion of a Model T assembly line."
    
    
    
    let entityName1 = "Student"
    let s1 = NSEntityDescription.insertNewObject(forEntityName: entityName1, into: contexts) as! Student
    s1.account="cai.qian"
    s1.major="Computer system engineering"
    s1.password="cq960327"
    s1.student_credit = 4
    s1.student_name="Qian Cai"
    s1.student_id="1389278"
    s1.course_seat?.adding(c1)
    s1.course_waitlist?.adding(c2)
    
     let s2 = NSEntityDescription.insertNewObject(forEntityName: entityName1, into: contexts) as! Student
     s2.account="cassie"
     s2.major="Infomation system engineering"
     s2.password="cassie001"
     s2.student_credit = 4
     s2.student_name="Cassie"
     s2.student_id="001"
     s2.course_seat?.adding(c8)
     s2.course_waitlist?.adding(c9)
   
    app.saveContext()

    
}
