// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_arena.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct Proto2ArenaUnittest { }

public extension Proto2ArenaUnittest {
  public struct UnittestArenaRoot {
    public static let `default` = UnittestArenaRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      Proto2ArenaUnittest.UnittestNoArenaImportRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class NestedMessage : GeneratedMessage {

    public static func == (lhs: Proto2ArenaUnittest.NestedMessage, rhs: Proto2ArenaUnittest.NestedMessage) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var d:Int32 = Int32(0)
    public fileprivate(set) var hasD:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasD {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:d)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Proto2ArenaUnittest.NestedMessage.Builder {
      return Proto2ArenaUnittest.NestedMessage.classBuilder() as! Proto2ArenaUnittest.NestedMessage.Builder
    }
    public func getBuilder() -> Proto2ArenaUnittest.NestedMessage.Builder {
      return classBuilder() as! Proto2ArenaUnittest.NestedMessage.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Proto2ArenaUnittest.NestedMessage.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Proto2ArenaUnittest.NestedMessage.Builder()
    }
    public func toBuilder() throws -> Proto2ArenaUnittest.NestedMessage.Builder {
      return try Proto2ArenaUnittest.NestedMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Proto2ArenaUnittest.NestedMessage) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
      return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasD {
        jsonMap["d"] = Int(d)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.NestedMessage {
      return try Proto2ArenaUnittest.NestedMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Proto2ArenaUnittest.NestedMessage {
      return try Proto2ArenaUnittest.NestedMessage.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Proto2ArenaUnittest.NestedMessage"
    }
    override public func className() -> String {
        return "Proto2ArenaUnittest.NestedMessage"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:Proto2ArenaUnittest.NestedMessage = Proto2ArenaUnittest.NestedMessage()
      public func getMessage() -> Proto2ArenaUnittest.NestedMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      public var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      @discardableResult
      public func setD(_ value:Int32) -> Proto2ArenaUnittest.NestedMessage.Builder {
        self.d = value
        return self
      }
      @discardableResult
      public func clearD() -> Proto2ArenaUnittest.NestedMessage.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      @discardableResult
      override public func clear() -> Proto2ArenaUnittest.NestedMessage.Builder {
        builderResult = Proto2ArenaUnittest.NestedMessage()
        return self
      }
      override public func clone() throws -> Proto2ArenaUnittest.NestedMessage.Builder {
        return try Proto2ArenaUnittest.NestedMessage.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> Proto2ArenaUnittest.NestedMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Proto2ArenaUnittest.NestedMessage {
        let returnMe:Proto2ArenaUnittest.NestedMessage = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:Proto2ArenaUnittest.NestedMessage) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
        if other == Proto2ArenaUnittest.NestedMessage() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            d = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
        let resultDecodedBuilder = Proto2ArenaUnittest.NestedMessage.Builder()
        if let jsonValueD = jsonMap["d"] as? Int {
          resultDecodedBuilder.d = Int32(jsonValueD)
        } else if let jsonValueD = jsonMap["d"] as? String {
          resultDecodedBuilder.d = Int32(jsonValueD)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> Proto2ArenaUnittest.NestedMessage.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try Proto2ArenaUnittest.NestedMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

  final public class ArenaMessage : GeneratedMessage {

    public static func == (lhs: Proto2ArenaUnittest.ArenaMessage, rhs: Proto2ArenaUnittest.ArenaMessage) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.repeatedNestedMessage == rhs.repeatedNestedMessage)
      fieldCheck = fieldCheck && (lhs.repeatedImportNoArenaMessage == rhs.repeatedImportNoArenaMessage)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var repeatedNestedMessage:Array<Proto2ArenaUnittest.NestedMessage>  = Array<Proto2ArenaUnittest.NestedMessage>()
    public fileprivate(set) var repeatedImportNoArenaMessage:Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage>  = Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage>()
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      for oneElementRepeatedNestedMessage in repeatedNestedMessage {
          try codedOutputStream.writeMessage(fieldNumber: 1, value:oneElementRepeatedNestedMessage)
      }
      for oneElementRepeatedImportNoArenaMessage in repeatedImportNoArenaMessage {
          try codedOutputStream.writeMessage(fieldNumber: 2, value:oneElementRepeatedImportNoArenaMessage)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      for oneElementRepeatedNestedMessage in repeatedNestedMessage {
          serialize_size += oneElementRepeatedNestedMessage.computeMessageSize(fieldNumber: 1)
      }
      for oneElementRepeatedImportNoArenaMessage in repeatedImportNoArenaMessage {
          serialize_size += oneElementRepeatedImportNoArenaMessage.computeMessageSize(fieldNumber: 2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Proto2ArenaUnittest.ArenaMessage.Builder {
      return Proto2ArenaUnittest.ArenaMessage.classBuilder() as! Proto2ArenaUnittest.ArenaMessage.Builder
    }
    public func getBuilder() -> Proto2ArenaUnittest.ArenaMessage.Builder {
      return classBuilder() as! Proto2ArenaUnittest.ArenaMessage.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Proto2ArenaUnittest.ArenaMessage.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Proto2ArenaUnittest.ArenaMessage.Builder()
    }
    public func toBuilder() throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
      return try Proto2ArenaUnittest.ArenaMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Proto2ArenaUnittest.ArenaMessage) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
      return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if !repeatedNestedMessage.isEmpty {
        var jsonArrayRepeatedNestedMessage:Array<Dictionary<String,Any>> = []
          for oneValueRepeatedNestedMessage in repeatedNestedMessage {
            let ecodedMessageRepeatedNestedMessage = try oneValueRepeatedNestedMessage.encode()
            jsonArrayRepeatedNestedMessage.append(ecodedMessageRepeatedNestedMessage)
          }
        jsonMap["repeatedNestedMessage"] = jsonArrayRepeatedNestedMessage
      }
      if !repeatedImportNoArenaMessage.isEmpty {
        var jsonArrayRepeatedImportNoArenaMessage:Array<Dictionary<String,Any>> = []
          for oneValueRepeatedImportNoArenaMessage in repeatedImportNoArenaMessage {
            let ecodedMessageRepeatedImportNoArenaMessage = try oneValueRepeatedImportNoArenaMessage.encode()
            jsonArrayRepeatedImportNoArenaMessage.append(ecodedMessageRepeatedImportNoArenaMessage)
          }
        jsonMap["repeatedImportNoArenaMessage"] = jsonArrayRepeatedImportNoArenaMessage
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.ArenaMessage {
      return try Proto2ArenaUnittest.ArenaMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Proto2ArenaUnittest.ArenaMessage {
      return try Proto2ArenaUnittest.ArenaMessage.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      var repeatedNestedMessageElementIndex:Int = 0
      for oneElementRepeatedNestedMessage in repeatedNestedMessage {
          output += "\(indent) repeatedNestedMessage[\(repeatedNestedMessageElementIndex)] {\n"
          output += try oneElementRepeatedNestedMessage.getDescription(indent: "\(indent)  ")
          output += "\(indent)}\n"
          repeatedNestedMessageElementIndex += 1
      }
      var repeatedImportNoArenaMessageElementIndex:Int = 0
      for oneElementRepeatedImportNoArenaMessage in repeatedImportNoArenaMessage {
          output += "\(indent) repeatedImportNoArenaMessage[\(repeatedImportNoArenaMessageElementIndex)] {\n"
          output += try oneElementRepeatedImportNoArenaMessage.getDescription(indent: "\(indent)  ")
          output += "\(indent)}\n"
          repeatedImportNoArenaMessageElementIndex += 1
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneElementRepeatedNestedMessage in repeatedNestedMessage {
                hashCode = (hashCode &* 31) &+ oneElementRepeatedNestedMessage.hashValue
            }
            for oneElementRepeatedImportNoArenaMessage in repeatedImportNoArenaMessage {
                hashCode = (hashCode &* 31) &+ oneElementRepeatedImportNoArenaMessage.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Proto2ArenaUnittest.ArenaMessage"
    }
    override public func className() -> String {
        return "Proto2ArenaUnittest.ArenaMessage"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:Proto2ArenaUnittest.ArenaMessage = Proto2ArenaUnittest.ArenaMessage()
      public func getMessage() -> Proto2ArenaUnittest.ArenaMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var repeatedNestedMessage:Array<Proto2ArenaUnittest.NestedMessage> {
           get {
               return builderResult.repeatedNestedMessage
           }
           set (value) {
               builderResult.repeatedNestedMessage = value
           }
      }
      @discardableResult
      public func setRepeatedNestedMessage(_ value:Array<Proto2ArenaUnittest.NestedMessage>) -> Proto2ArenaUnittest.ArenaMessage.Builder {
        self.repeatedNestedMessage = value
        return self
      }
      @discardableResult
      public func clearRepeatedNestedMessage() -> Proto2ArenaUnittest.ArenaMessage.Builder {
        builderResult.repeatedNestedMessage.removeAll(keepingCapacity: false)
        return self
      }
      public var repeatedImportNoArenaMessage:Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage> {
           get {
               return builderResult.repeatedImportNoArenaMessage
           }
           set (value) {
               builderResult.repeatedImportNoArenaMessage = value
           }
      }
      @discardableResult
      public func setRepeatedImportNoArenaMessage(_ value:Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage>) -> Proto2ArenaUnittest.ArenaMessage.Builder {
        self.repeatedImportNoArenaMessage = value
        return self
      }
      @discardableResult
      public func clearRepeatedImportNoArenaMessage() -> Proto2ArenaUnittest.ArenaMessage.Builder {
        builderResult.repeatedImportNoArenaMessage.removeAll(keepingCapacity: false)
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      @discardableResult
      override public func clear() -> Proto2ArenaUnittest.ArenaMessage.Builder {
        builderResult = Proto2ArenaUnittest.ArenaMessage()
        return self
      }
      override public func clone() throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
        return try Proto2ArenaUnittest.ArenaMessage.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> Proto2ArenaUnittest.ArenaMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Proto2ArenaUnittest.ArenaMessage {
        let returnMe:Proto2ArenaUnittest.ArenaMessage = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:Proto2ArenaUnittest.ArenaMessage) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
        if other == Proto2ArenaUnittest.ArenaMessage() {
         return self
        }
        if !other.repeatedNestedMessage.isEmpty  {
           builderResult.repeatedNestedMessage += other.repeatedNestedMessage
        }
        if !other.repeatedImportNoArenaMessage.isEmpty  {
           builderResult.repeatedImportNoArenaMessage += other.repeatedImportNoArenaMessage
        }
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder = Proto2ArenaUnittest.NestedMessage.Builder()
            try codedInputStream.readMessage(builder: subBuilder,extensionRegistry:extensionRegistry)
            repeatedNestedMessage.append(subBuilder.buildPartial())

          case 18:
            let subBuilder = Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
            try codedInputStream.readMessage(builder: subBuilder,extensionRegistry:extensionRegistry)
            repeatedImportNoArenaMessage.append(subBuilder.buildPartial())

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
        let resultDecodedBuilder = Proto2ArenaUnittest.ArenaMessage.Builder()
        if let jsonValueRepeatedNestedMessage = jsonMap["repeatedNestedMessage"] as? Array<Dictionary<String,Any>> {
          var jsonArrayRepeatedNestedMessage:Array<Proto2ArenaUnittest.NestedMessage> = []
          for oneValueRepeatedNestedMessage in jsonValueRepeatedNestedMessage {
            let messageFromStringRepeatedNestedMessage = try Proto2ArenaUnittest.NestedMessage.Builder.decodeToBuilder(jsonMap:oneValueRepeatedNestedMessage).build()

            jsonArrayRepeatedNestedMessage.append(messageFromStringRepeatedNestedMessage)
          }
          resultDecodedBuilder.repeatedNestedMessage = jsonArrayRepeatedNestedMessage
        }
        if let jsonValueRepeatedImportNoArenaMessage = jsonMap["repeatedImportNoArenaMessage"] as? Array<Dictionary<String,Any>> {
          var jsonArrayRepeatedImportNoArenaMessage:Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage> = []
          for oneValueRepeatedImportNoArenaMessage in jsonValueRepeatedImportNoArenaMessage {
            let messageFromStringRepeatedImportNoArenaMessage = try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.decodeToBuilder(jsonMap:oneValueRepeatedImportNoArenaMessage).build()

            jsonArrayRepeatedImportNoArenaMessage.append(messageFromStringRepeatedImportNoArenaMessage)
          }
          resultDecodedBuilder.repeatedImportNoArenaMessage = jsonArrayRepeatedImportNoArenaMessage
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> Proto2ArenaUnittest.ArenaMessage.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try Proto2ArenaUnittest.ArenaMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension Proto2ArenaUnittest.NestedMessage: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Proto2ArenaUnittest.NestedMessage> {
    var mergedArray = Array<Proto2ArenaUnittest.NestedMessage>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.NestedMessage? {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(data: data, extensionRegistry:Proto2ArenaUnittest.UnittestArenaRoot.default.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.NestedMessage {
    return try Proto2ArenaUnittest.NestedMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}
extension Proto2ArenaUnittest.ArenaMessage: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Proto2ArenaUnittest.ArenaMessage> {
    var mergedArray = Array<Proto2ArenaUnittest.ArenaMessage>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.ArenaMessage? {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(data: data, extensionRegistry:Proto2ArenaUnittest.UnittestArenaRoot.default.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ArenaMessage {
    return try Proto2ArenaUnittest.ArenaMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
