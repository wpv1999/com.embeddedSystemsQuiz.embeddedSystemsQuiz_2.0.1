.class public Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;
.super Landroid/os/AsyncTask;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appfeel/cordova/connectivity/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "reachable":Z
    const/4 v0, 0x0

    .line 200
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    :try_start_3
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 201
    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_14

    move-result v1

    .line 206
    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 203
    :catch_14
    move-exception v2

    goto :goto_f

    .line 202
    :catch_16
    move-exception v2

    goto :goto_f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appfeel/cordova/connectivity/Connectivity$NetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
