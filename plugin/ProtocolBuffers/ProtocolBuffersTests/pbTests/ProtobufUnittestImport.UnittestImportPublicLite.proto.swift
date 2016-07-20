// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import_public_lite.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension ProtobufUnittestImport{}

public func == (lhs: ProtobufUnittestImport.PublicImportMessageLite, rhs: ProtobufUnittestImport.PublicImportMessageLite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittestImport {
  public struct UnittestImportPublicLiteRoot {
    public static var sharedInstance : UnittestImportPublicLiteRoot {
     struct Static {
         static let instance : UnittestImportPublicLiteRoot = UnittestImportPublicLiteRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class PublicImportMessageLite : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var e:Int32 = Int32(0)

    public private(set) var hasE:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasE {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:e)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasE {
        serialize_size += e.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittestImport.PublicImportMessageLite> {
      var mergedArray = Array<ProtobufUnittestImport.PublicImportMessageLite>()
      while let value = try parseDelimitedFrom(inputStream: inputStream) {
        mergedArray.append(value)
      }
      return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite? {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportPublicLiteRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return ProtobufUnittestImport.PublicImportMessageLite.classBuilder() as! ProtobufUnittestImport.PublicImportMessageLite.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return classBuilder() as! ProtobufUnittestImport.PublicImportMessageLite.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessageLite.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessageLite.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return try ProtobufUnittestImport.PublicImportMessageLite.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.PublicImportMessageLite) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasE {
        jsonMap["e"] = NSNumber(value:e)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasE {
        output += "\(indent) e: \(e) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ e.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessageLite"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessageLite"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.PublicImportMessageLite.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.PublicImportMessageLite = ProtobufUnittestImport.PublicImportMessageLite()
      public func getMessage() -> ProtobufUnittestImport.PublicImportMessageLite {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasE:Bool {
           get {
                return builderResult.hasE
           }
      }
      public var e:Int32 {
           get {
                return builderResult.e
           }
           set (value) {
               builderResult.hasE = true
               builderResult.e = value
           }
      }
      public func setE(_ value:Int32) -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        self.e = value
        return self
      }
      public func clearE() -> ProtobufUnittestImport.PublicImportMessageLite.Builder{
           builderResult.hasE = false
           builderResult.e = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        builderResult = ProtobufUnittestImport.PublicImportMessageLite()
        return self
      }
      override public func clone() throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        return try ProtobufUnittestImport.PublicImportMessageLite.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittestImport.PublicImportMessageLite {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.PublicImportMessageLite {
        let returnMe:ProtobufUnittestImport.PublicImportMessageLite = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittestImport.PublicImportMessageLite) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        if other == ProtobufUnittestImport.PublicImportMessageLite() {
         return self
        }
        if other.hasE {
             e = other.e
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            e = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.PublicImportMessageLite.Builder()
        if let jsonValueE = jsonMap["e"] as? NSNumber {
          resultDecodedBuilder.e = jsonValueE.int32Value
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittestImport.PublicImportMessageLite.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
