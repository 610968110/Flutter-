package com.example.flutter_learn

import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity : FlutterActivity() {

    val sharedText: String = "test"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        MethodChannel(flutterView, "app.channel.shared.data")
                .setMethodCallHandler { methodCall, result ->
                    if (methodCall?.method?.contentEquals("getSharedText") == true) {
                        result.success(sharedText)
                    }
                }
    }

}
