package com.wuba.fair.core;

import com.wuba.fair.FairPlugin2;
import com.wuba.fair.constant.FairConstant;
import com.wuba.fair.jsexecutor.IJSExecutor;
import com.wuba.fair.thread.FairTask;
import com.wuba.fair.thread.FairThread;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;

/**
 * 接收js的消息，发送消息给dart
 */
public class FairJsFlutterEngine {

    public FairJsFlutterEngine() {
        setupChannel();
    }

    private BasicMessageChannel<String> msgChannel;

    private void setupChannel() {
        msgChannel = new BasicMessageChannel<>(
                FairPlugin2.get().getBinaryMessenger(), FairConstant.FLUTTER_COMMON_MESSAGE_CHANNEL,
                StringCodec.INSTANCE);

        msgChannel.setMessageHandler(callHandler);
    }

    /**
     * 接收dart返回结果，执行js，获取js的结果返回给dart端，
     */
    private BasicMessageChannel.MessageHandler<String> callHandler = (message, reply) -> {
        final Object[] obj = new Object[1];
        try {
          FairThread.get().run(new FairTask() {
              @Override
              public void runTask() {
                  IJSExecutor executor = FairPlugin2.get().getJsExecutor();
                  obj[0] = executor.invokeJSChannel(message);
                  FairThread.runOnUI(() -> {
                      reply.reply(String.valueOf(obj[0]));
                  });
              }
          });
        } catch (Exception e) {
            e.printStackTrace();
        }
    };

    /**
     * 发送信息到dart端，并接收dart返回的结果
     */
    public void invokeFlutterChannel(String msg, BasicMessageChannel.Reply<String> reply) {
        FairThread.runOnUI(() -> {
            msgChannel.send(msg, reply);
        });
    }

}
