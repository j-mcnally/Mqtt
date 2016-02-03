//
//  PubcompPacket.swift
//  Mqtt
//
//  Created by Heee on 16/2/2.
//  Copyright © 2016年 beidouapp. All rights reserved.
//

import Foundation

struct PubCompPacket: Packet {
    
    var fixHeader: PacketFixHeader
    
    var packetId: UInt16
    
    var varHeader: Array<UInt8> {
        return packetId.bytes
    }
    
    var payload = Array<UInt8>()
    
    init(packetId: UInt16) {
        fixHeader = PacketFixHeader(type: .PUBCOMP)
        self.packetId = packetId
    }
}