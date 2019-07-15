.class Lcom/appfeel/cordova/admob/AdMobAds$4;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$_iid:Ljava/lang/String;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .registers 4
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->val$_iid:Ljava/lang/String;

    iput-object p3, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1102(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    .line 651
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->val$_iid:Ljava/lang/String;

    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1200(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1300(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    .line 652
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 653
    return-void
.end method
