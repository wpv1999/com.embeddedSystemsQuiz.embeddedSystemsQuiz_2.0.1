.class Lcom/appfeel/cordova/admob/AdMobAds$5;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
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
    .line 669
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$5;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$5;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1500(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$5;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 673
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 674
    return-void
.end method
