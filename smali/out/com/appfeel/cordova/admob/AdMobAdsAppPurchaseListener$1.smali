.class Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;
.super Ljava/lang/Object;
.source "AdMobAdsAppPurchaseListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

.field final synthetic val$inAppPurchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;Lcom/google/android/gms/ads/purchase/InAppPurchase;)V
    .registers 3
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->val$inAppPurchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 51
    const-string v1, "AdmMobAds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdMobAdsAppPurchaseListener.onInAppPurchaseRequested: In app purchase. SKU: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->val$inAppPurchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    invoke-interface {v3}, Lcom/google/android/gms/ads/purchase/InAppPurchase;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->access$100(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->access$000()I

    move-result v2

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->val$inAppPurchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    const-string v1, "javascript:cordova.fireDocumentEvent(admob.events.onInAppPurchaseRequested, { \'purchaseId\': %d, \'productId\': \'%s\' });"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->access$000()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->val$inAppPurchase:Lcom/google/android/gms/ads/purchase/InAppPurchase;

    invoke-interface {v4}, Lcom/google/android/gms/ads/purchase/InAppPurchase;->getProductId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "event":Ljava/lang/String;
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->access$200(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;)Lcom/appfeel/cordova/admob/AdMobAds;

    move-result-object v1

    iget-object v1, v1, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->access$008()I

    .line 56
    return-void
.end method
