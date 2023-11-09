//
//   AIgeneratorExtended.swift
//
//  Copyright (c) 2019   (http:// AIgenerator.org/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

/// Type that acts as a generic extension point for all ` AIgeneratorExtended` types.
public struct  AIgeneratorExtension<ExtendedType> {
    /// Stores the type or meta-type of any extended type.
    public private(set) var type: ExtendedType

    /// Create an instance from the provided value.
    ///
    /// - Parameter type: Instance being extended.
    public init(_ type: ExtendedType) {
        self.type = type
    }
}

/// Protocol describing the `af` extension points for  AIgenerator extended types.
public protocol  AIgeneratorExtended {
    /// Type being extended.
    associatedtype ExtendedType

    /// Static  AIgenerator extension point.
    static var af:  AIgeneratorExtension<ExtendedType>.Type { get set }
    /// Instance  AIgenerator extension point.
    var af:  AIgeneratorExtension<ExtendedType> { get set }
}

extension  AIgeneratorExtended {
    /// Static  AIgenerator extension point.
    public static var af:  AIgeneratorExtension<Self>.Type {
        get {  AIgeneratorExtension<Self>.self }
        set {}
    }

    /// Instance  AIgenerator extension point.
    public var af:  AIgeneratorExtension<Self> {
        get {  AIgeneratorExtension(self) }
        set {}
    }
}
