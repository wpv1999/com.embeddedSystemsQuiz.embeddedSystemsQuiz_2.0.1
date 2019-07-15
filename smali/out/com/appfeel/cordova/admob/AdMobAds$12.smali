.class Lcom/appfeel/cordova/admob/AdMobAds$12;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->onConnectivityChanged(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;)V
    .registers 2
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$12;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$12;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1500(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$12;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 849
    return-void
.end method
