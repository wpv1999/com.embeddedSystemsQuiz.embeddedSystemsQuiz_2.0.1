.class Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;
.super Ljava/lang/Object;
.source "AdMobAdsAdListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    iput p2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 67
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    iget v3, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->val$code:I

    invoke-virtual {v2, v3}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->getErrorReason(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "AdmMobAds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v4}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$000(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": failed to load ad ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "javascript:cordova.fireDocumentEvent(admob.events.onAdFailedToLoad, { \'adType\': \'%s\', \'error\': %d, \'reason\': \'%s\' });"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v5}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$000(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->val$code:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v2}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$100(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Lcom/appfeel/cordova/admob/AdMobAds;

    move-result-object v2

    iget-object v2, v2, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    return-void
.end method
