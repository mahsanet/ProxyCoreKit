//
//  ProxyCoreKitWrapper.swift
//  ProxyCoreKit
//
//  Created by MahsaNet
import Foundation
import ProxyCoreKit


public enum ProxyCore {
    /// Checks if the core service is running
    public static func isCoreRunning() -> Bool {
        return IosIsCoreRunningIOS()
    }
    
    /// Starts the gRPC server
    /// - Returns: A Boolean indicating whether the gRPC server started successfully
    public static func startGRPC() -> Bool {
        return IosStartGRPCIOS()
    }
    
    /// Starts the Xray Core
    /// - Parameters:
    ///   - cacheDir: Cache directory path
    ///   - config: Xray configuration as a string
    ///   - bufferSize: Buffer size (default: 128)
    ///   - enableSniffing: Whether to enable sniffing (default: true)
    ///   - port: Port number (default: 2080)
    /// - Returns: Result of starting the core ("true" for success, error message otherwise)
    ///
    ///
    public static func startCore(
        coreName: String,
        cacheDir: String,
        config: String,
        bufferSize: Int32 = 128,
        enableSniffing: Bool = true,
        port: Int32 = 2080
    ) -> String {
        return IosStartCoreIOS(coreName, cacheDir, config, bufferSize, enableSniffing, port)
    }
    
    
    /// Stops Xray Core
    /// - Returns: bool result
    public static func stopCore() -> Bool {
        return IosStopCoreIOS()
    }
} 
