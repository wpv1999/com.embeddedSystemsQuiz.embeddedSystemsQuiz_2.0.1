.class public Lcom/appfeel/cordova/connectivity/CPConnectivity;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CPConnectivity.java"

# interfaces
.implements Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;


# static fields
.field private static final ACTION_OBSERVE_INTERNET_CONNECTION:Ljava/lang/String; = "observeInternetConnection"

.field private static final ACTION_OBSERVE_LOCAL_WIFI:Ljava/lang/String; = "observeLocalWifi"

.field private static final ACTION_OBSERVE_REMOTE_HOSTNAME:Ljava/lang/String; = "observeRemoteHostName"

.field private static final ACTION_OBSERVE_REMOTE_IP:Ljava/lang/String; = "observeRemoteIP"

.field private static final ACTION_STOP_ALL_OBSERVERS:Ljava/lang/String; = "stopAllObservers"

.field public static final CONNECTIVITY_LOGTAG:Ljava/lang/String; = "AppFeel-Connectivity"

.field private static final DEFAULT_HOST_NAME:Ljava/lang/String; = "www.google.com"

.field private static final EVENT_REACHABILITY_CHANGE:Ljava/lang/String; = "connectivity.events.onReachabilityChanged"

.field private static final OPT_HOST_NAME:Ljava/lang/String; = "hostName"

.field private static final OPT_IPV4:Ljava/lang/String; = "ipv4"

.field private static final OPT_IPV6:Ljava/lang/String; = "ipv6"

.field private static final OPT_STOP_ALL_OBSERVERS:Ljava/lang/String; = "stopAllObservers"


# instance fields
.field private connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private executeObserveInternetConnection(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 187
    const-string v0, "stopAllObservers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->stopAllObservers(Z)V

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/appfeel/cordova/connectivity/Connectivity;->observeInternetConnection()V

    .line 192
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method private executeObserveLocalWifi(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 176
    const-string v0, "stopAllObservers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->stopAllObservers(Z)V

    .line 181
    :cond_c
    const-string v0, "Not yet implemented in Android"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method private executeObserveRemoteHostName(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "www.google.com"

    .line 126
    .local v0, "hostName":Ljava/lang/String;
    const-string v1, "stopAllObservers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 127
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->stopAllObservers(Z)V

    .line 130
    :cond_e
    const-string v1, "hostName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 131
    const-string v1, "hostName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 132
    const-string v1, "hostName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_24
    iget-object v1, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v1, v0}, Lcom/appfeel/cordova/connectivity/Connectivity;->observeRemoteHostName(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 139
    const/4 v1, 0x0

    return-object v1
.end method

.method private executeObserveRemoteIp(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 6
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v1, 0x1

    .line 144
    .local v1, "isParamsOk":Z
    const-string v0, ""

    .line 146
    .local v0, "ip":Ljava/lang/String;
    const-string v2, "stopAllObservers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 147
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->stopAllObservers(Z)V

    .line 150
    :cond_f
    const-string v2, "ipv4"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "ipv6"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 151
    const/4 v1, 0x0

    .line 165
    :goto_20
    if-eqz v1, :cond_4e

    .line 166
    iget-object v2, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v2, v0}, Lcom/appfeel/cordova/connectivity/Connectivity;->observeRemoteIp(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 172
    :goto_2a
    const/4 v2, 0x0

    return-object v2

    .line 153
    :cond_2c
    const-string v2, "ipv4"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 154
    const-string v2, "ipv4"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v1, 0x1

    goto :goto_20

    .line 157
    :cond_3c
    const-string v2, "ipv6"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 158
    const-string v2, "ipv6"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const/4 v1, 0x1

    goto :goto_20

    .line 162
    :cond_4c
    const/4 v1, 0x0

    goto :goto_20

    .line 170
    :cond_4e
    const-string v2, "Bad argument options."

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private executeStopAllObservers(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 3
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->stopAllObservers(Z)V

    .line 198
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method private stopAllObservers(Z)V
    .registers 3
    .param p1, "isDisableBR"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/appfeel/cordova/connectivity/Connectivity;->stopAllObservers(Z)V

    .line 204
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    const-string v4, "observeRemoteHostName"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 93
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    .local v0, "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->executeObserveRemoteHostName(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 116
    .end local v0    # "options":Lorg/json/JSONObject;
    :goto_13
    if-eqz v1, :cond_18

    .line 117
    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_18
    move v2, v3

    .line 120
    :goto_19
    return v2

    .line 96
    :cond_1a
    const-string v4, "observeRemoteIP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 97
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->executeObserveRemoteIp(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 100
    goto :goto_13

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_2b
    const-string v4, "observeLocalWifi"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 101
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->executeObserveLocalWifi(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 104
    goto :goto_13

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_3c
    const-string v4, "observeInternetConnection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 105
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->executeObserveInternetConnection(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 108
    goto :goto_13

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_4d
    const-string v4, "stopAllObservers"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 109
    invoke-direct {p0, p3}, Lcom/appfeel/cordova/connectivity/CPConnectivity;->executeStopAllObservers(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    goto :goto_13

    .line 112
    :cond_5a
    const-string v4, "AppFeel-Connectivity"

    const-string v5, "Invalid action passed: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .registers 4
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 68
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->GetInstance(Landroid/app/Activity;Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;)Lcom/appfeel/cordova/connectivity/Connectivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    .line 72
    return-void
.end method

.method public onConnectivityChanged(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .param p1, "interfaceType"    # Ljava/lang/String;
    .param p2, "isConnected"    # Z
    .param p3, "observer"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, ""

    .line 209
    .local v0, "connected":Ljava/lang/String;
    const-string v1, ""

    .line 211
    .local v1, "event":Ljava/lang/String;
    if-nez p2, :cond_25

    .line 212
    const-string v0, "false"

    .line 217
    :goto_8
    const-string v2, "javascript:cordova.fireDocumentEvent(%s, { \'interface\' : %s, \'connected\' : %s, \'observer\': %s });"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "connectivity.events.onReachabilityChanged"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/appfeel/cordova/connectivity/CPConnectivity;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 220
    return-void

    .line 214
    :cond_25
    const-string v0, "true"

    goto :goto_8
.end method
