class ApisRoom {
  static String createRoom = '/api/voicechat/room/createRoom';
  static String findRoomListByTag = '/api/voicechat/room/findRoomListByTag';
  static String joinRoom = '/api/voicechat/room/joinRoom';
  static String joinRoomSuccess = '/api/voicechat/room/joinRoomSuccess';
  /// 一键锁麦
  static String batchLockMike = '/api/voicechat/room/batchLockMike';
  /// 一键解锁麦位
  static String batchUnlockMike = '/api/voicechat/room/batchUnlockMike';
  /// 锁定麦位
  static String lockMike = '/api/voicechat/room/lockMike';
  /// 解锁麦位
  static String unlockMike = '/api/voicechat/room/unlockMike';
  /// 清除房间魅力值
  static String clearUserRoomCharisma =
      '/api/voicechat/room/clearUserRoomCharisma';
  /// 用户下麦
  static String downMike = '/api/voicechat/room/downMike';
  /// 用户申请上麦
  static String onMike = '/api/voicechat/room/onMike';
  /// 根据房间code查询房间
  static String queryRoomByCode = '/api/voicechat/room/queryRoomByCode';
  /// 保持麦位心跳
  static String mikeHeartbeat = '/api/voicechat/room/mikeHeartbeat';
}
