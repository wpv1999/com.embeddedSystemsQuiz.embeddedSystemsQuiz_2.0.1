.class public Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdsAdListener.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private adType:Ljava/lang/String;

.field private admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

.field private isBackFill:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAds;Z)V
    .registers 5
    .param p1, "adType"    # Ljava/lang/String;
    .param p2, "admobAds"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p3, "isBackFill"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->isBackFill:Z

    .line 42
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    .line 44
    iput-boolean p3, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->isBackFill:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Lcom/appfeel/cordova/admob/AdMobAds;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    return-object v0
.end method


# virtual methods
.method public getErrorReason(I)Ljava/lang/String;
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 82
    const-string v0, "Unknown"

    .line 83
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_12

    .line 97
    :goto_5
    return-object v0

    .line 85
    :pswitch_6
    const-string v0, "Internal error"

    .line 86
    goto :goto_5

    .line 88
    :pswitch_9
    const-string v0, "Invalid request"

    .line 89
    goto :goto_5

    .line 91
    :pswitch_c
    const-string v0, "Network Error"

    .line 92
    goto :goto_5

    .line 94
    :pswitch_f
    const-string v0, "No fill"

    goto :goto_5

    .line 83
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public onAdClosed()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v0, v0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$5;

    invoke-direct {v1, p0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$5;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->isBackFill:Z

    if-eqz v1, :cond_16

    .line 63
    move v0, p1

    .line 64
    .local v0, "code":I
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, v1, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;

    invoke-direct {v2, p0, v0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    .end local v0    # "code":I
    :goto_15
    return-void

    .line 74
    :cond_16
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->tryBackfill(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onAdLeftApplication()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v0, v0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$4;

    invoke-direct {v1, p0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$4;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appfeel/cordova/admob/AdMobAds;->onAdLoaded(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v0, v0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$1;

    invoke-direct {v1, p0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$1;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appfeel/cordova/admob/AdMobAds;->onAdOpened(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v0, v0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;

    invoke-direct {v1, p0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
