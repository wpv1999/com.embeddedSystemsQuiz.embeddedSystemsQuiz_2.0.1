.class public Lcom/appfeel/cordova/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;,
        Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOST_NAME:Ljava/lang/String; = "www.google.com"

.field private static Instance:Lcom/appfeel/cordova/connectivity/Connectivity;


# instance fields
.field private activity:Landroid/app/Activity;

.field private connectivityChangeBR:Landroid/content/BroadcastReceiver;

.field private hostName:Ljava/lang/String;

.field private iConnectivityChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private isBREnabled:Z

.field private isCheckingHostNameReachability:Z

.field private isCheckingIpReachability:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingHostNameReachability:Z

    .line 56
    const-string v0, "www.google.com"

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->hostName:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingIpReachability:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->ip:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isBREnabled:Z

    .line 66
    new-instance v0, Lcom/appfeel/cordova/connectivity/Connectivity$1;

    invoke-direct {v0, p0}, Lcom/appfeel/cordova/connectivity/Connectivity$1;-><init>(Lcom/appfeel/cordova/connectivity/Connectivity;)V

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->connectivityChangeBR:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->activity:Landroid/app/Activity;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->iConnectivityChange:Ljava/util/List;

    .line 123
    return-void
.end method

.method public static GetInstance(Landroid/app/Activity;Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;)Lcom/appfeel/cordova/connectivity/Connectivity;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "iConnectivityChange"    # Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "isContained":Z
    sget-object v2, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    if-nez v2, :cond_c

    .line 129
    new-instance v2, Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-direct {v2, p0}, Lcom/appfeel/cordova/connectivity/Connectivity;-><init>(Landroid/app/Activity;)V

    sput-object v2, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    .line 132
    :cond_c
    sget-object v2, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    iget-object v2, v2, Lcom/appfeel/cordova/connectivity/Connectivity;->iConnectivityChange:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;

    .line 133
    .local v0, "iCChange":Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 134
    const/4 v1, 0x1

    .line 139
    .end local v0    # "iCChange":Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    :cond_27
    if-nez v1, :cond_30

    .line 140
    sget-object v2, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    iget-object v2, v2, Lcom/appfeel/cordova/connectivity/Connectivity;->iConnectivityChange:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_30
    sget-object v2, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    return-object v2
.end method

.method public static GetInstance(Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;)Lcom/appfeel/cordova/connectivity/Connectivity;
    .registers 2
    .param p0, "iConnectivityChange"    # Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    if-nez v0, :cond_a

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_a
    sget-object v0, Lcom/appfeel/cordova/connectivity/Connectivity;->Instance:Lcom/appfeel/cordova/connectivity/Connectivity;

    iget-object v0, v0, Lcom/appfeel/cordova/connectivity/Connectivity;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->GetInstance(Landroid/app/Activity;Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;)Lcom/appfeel/cordova/connectivity/Connectivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/appfeel/cordova/connectivity/Connectivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingHostNameReachability:Z

    return v0
.end method

.method static synthetic access$100(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/appfeel/cordova/connectivity/Connectivity;->checkReachability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/appfeel/cordova/connectivity/Connectivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingIpReachability:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appfeel/cordova/connectivity/Connectivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/connectivity/Connectivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->iConnectivityChange:Ljava/util/List;

    return-object v0
.end method

.method private static checkReachability(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 215
    .local v0, "reachable":Z
    :try_start_1
    new-instance v1, Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;

    invoke-direct {v1}, Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v0

    .line 220
    :goto_1a
    return v0

    .line 217
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private startAllObservers()V
    .registers 4

    .prologue
    .line 170
    iget-boolean v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isBREnabled:Z

    if-nez v1, :cond_18

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->connectivityChangeBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isBREnabled:Z

    .line 178
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_18
    return-void
.end method


# virtual methods
.method public observeInternetConnection()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->startAllObservers()V

    .line 167
    return-void
.end method

.method public observeRemoteHostName(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->hostName:Ljava/lang/String;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingHostNameReachability:Z

    .line 157
    invoke-direct {p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->startAllObservers()V

    .line 158
    return-void
.end method

.method public observeRemoteIp(Ljava/lang/String;)V
    .registers 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->ip:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->startAllObservers()V

    .line 163
    return-void
.end method

.method public stopAllObservers(Z)V
    .registers 5
    .param p1, "isDisableBR"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-boolean v2, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingHostNameReachability:Z

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->hostName:Ljava/lang/String;

    .line 184
    iput-boolean v2, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isCheckingIpReachability:Z

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->ip:Ljava/lang/String;

    .line 187
    if-eqz p1, :cond_1c

    iget-boolean v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isBREnabled:Z

    if-eqz v0, :cond_1c

    .line 189
    iget-object v0, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->connectivityChangeBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iput-boolean v2, p0, Lcom/appfeel/cordova/connectivity/Connectivity;->isBREnabled:Z

    .line 192
    :cond_1c
    return-void
.end method
