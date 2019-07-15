.class Lcom/appfeel/cordova/admob/AdMobAds$8;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->executeRecordPlayBillingResolution(IILorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$billingResponseCode:I

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$purchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

.field final synthetic val$purchaseId:I


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;Lcom/google/android/gms/ads/purchase/InAppPurchase;IILorg/apache/cordova/CallbackContext;)V
    .registers 6
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$purchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    iput p3, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$billingResponseCode:I

    iput p4, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$purchaseId:I

    iput-object p5, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 733
    const-string v0, "AdmMobAds"

    const-string v1, "AdMobAds.recordPlayBillingResolution: Recording Google Play purchase resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$purchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    iget v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$billingResponseCode:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchase;->recordPlayBillingResolution(I)V

    .line 735
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1600(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    move-result-object v0

    iget v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$purchaseId:I

    invoke-virtual {v0, v1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->removePurchase(I)V

    .line 737
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_22

    .line 738
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 740
    :cond_22
    return-void
.end method
