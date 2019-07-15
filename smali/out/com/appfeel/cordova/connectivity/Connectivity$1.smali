.class Lcom/appfeel/cordova/connectivity/Connectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appfeel/cordova/connectivity/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/connectivity/Connectivity;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/connectivity/Connectivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x50

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 70
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 71
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 72
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    const/4 v6, -0x1

    .line 73
    .local v6, "type":I
    const/4 v4, 0x0

    .line 74
    .local v4, "isConnected":Z
    const-string v3, ""

    .line 75
    .local v3, "interfaceType":Ljava/lang/String;
    const-string v5, "connectivity.OBSERVER.INTERNET"

    .line 77
    .local v5, "observer":Ljava/lang/String;
    if-eqz v0, :cond_93

    .line 78
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 79
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 81
    if-eqz v4, :cond_40

    .line 82
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$000(Lcom/appfeel/cordova/connectivity/Connectivity;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 83
    const-string v5, "connectivity.OBSERVER.HOST"

    .line 84
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$100(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$200(Ljava/lang/String;I)Z

    move-result v4

    .line 91
    :cond_40
    :goto_40
    const/16 v7, 0x9

    if-ne v6, v7, :cond_7f

    .line 92
    const-string v3, "connectivity.INTERFACE.ETHERNET"

    .line 109
    :goto_46
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$500(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8

    .line 110
    :try_start_4d
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$500(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;

    .line 111
    .local v2, "iCChange":Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    invoke-interface {v2, v3, v4, v5}, Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;->onConnectivityChanged(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_57

    .line 113
    .end local v2    # "iCChange":Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    :catchall_67
    move-exception v7

    monitor-exit v8
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_67

    throw v7

    .line 85
    :cond_6a
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$300(Lcom/appfeel/cordova/connectivity/Connectivity;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 86
    const-string v5, "connectivity.OBSERVER.HOST"

    .line 87
    iget-object v7, p0, Lcom/appfeel/cordova/connectivity/Connectivity$1;->this$0:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-static {v7}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$400(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/appfeel/cordova/connectivity/Connectivity;->access$200(Ljava/lang/String;I)Z

    move-result v4

    goto :goto_40

    .line 93
    :cond_7f
    if-nez v6, :cond_84

    .line 94
    const-string v3, "connectivity.INTERFACE.MOBILE"

    goto :goto_46

    .line 95
    :cond_84
    const/4 v7, 0x1

    if-ne v6, v7, :cond_8a

    .line 96
    const-string v3, "connectivity.INTERFACE.WIFI"

    goto :goto_46

    .line 97
    :cond_8a
    const/4 v7, 0x6

    if-ne v6, v7, :cond_90

    .line 98
    const-string v3, "connectivity.INTERFACE.WIMAX"

    goto :goto_46

    .line 100
    :cond_90
    const-string v3, "connectivity.INTERFACE.UNDEFINED"

    goto :goto_46

    .line 104
    :cond_93
    const-string v3, "connectivity.INTERFACE.DISCONNECTED"

    .line 105
    const/4 v4, 0x0

    .line 106
    const-string v5, "connectivity.OBSERVER.INTERNET"

    goto :goto_46

    .line 113
    :cond_99
    :try_start_99
    monitor-exit v8
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_67

    .line 115
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "interfaceType":Ljava/lang/String;
    .end local v4    # "isConnected":Z
    .end local v5    # "observer":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_9a
    return-void
.end method
