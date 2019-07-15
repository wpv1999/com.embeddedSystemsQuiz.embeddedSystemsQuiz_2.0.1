.class Lcom/appfeel/cordova/admob/AdMobAds$6;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->showInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;Lorg/apache/cordova/CallbackContext;)V
    .registers 3
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1500(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 693
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1102(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    .line 694
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1500(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 696
    :cond_1b
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_24

    .line 697
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 699
    :cond_24
    return-void
.end method
