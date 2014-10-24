//
//  SugarRecordMappingProtocol.swift
//  SugarRecord
//
//  Created by Pedro Piñera Buendía on 19/10/14.
//  Copyright (c) 2014 SugarRecord. All rights reserved.
//

import Foundation

public protocol SugarRecordMappingProtocol {
    /**
    *  Alias for the object type
    */
    typealias MappingObjectType
    
    /**
    *  Returns the default object mapper
    */
    class func defaultMapper() -> SugarRecordMapper
    
    /**
    *  Map an array of objects (dictionaries)
    */
    class func map(#objects: [[String: NSObject]], completion: (() -> ())?)
    
    /**
    *  Map an array of objects (dictionaries) passing the context
    */
    class func map(#objects: [[String: NSObject]], inContext context: SugarRecordContext) -> [MappingObjectType]
    
    /**
    *  Map an array of objects (dictionaries) passing the context and the mapper
    */
    class func map(#objects: [[String: NSObject]], inContext context: SugarRecordContext, withMapper mapper: SugarRecordMapper) -> [MappingObjectType]
    
    /**
    *  Map an object
    */
    class func map(#object: [String: NSObject], completion: (() -> ())?)
    
    /**
    *  Map an object passing the context
    */
    class func map(#object: [String: NSObject], inContext context: SugarRecordContext) -> MappingObjectType?
    
    /**
    *  Map an object using a dictionary with attributes and returning it as a result
    */
    class func map(#object: [String: NSObject], inContext context: SugarRecordContext, withMapper mapper: SugarRecordMapper) -> MappingObjectType?
}