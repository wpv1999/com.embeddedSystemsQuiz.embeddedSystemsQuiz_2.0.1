.class Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;
.super Ljava/lang/Object;
.source "AdMobAdsAdListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->onAdOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 106
    const-string v1, "AdmMobAds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v3}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$000(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ad opened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "javascript:cordova.fireDocumentEvent(admob.events.onAdOpened, { \'adType\': \'%s\' });"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v4}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$000(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "event":Ljava/lang/String;
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->access$100(Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)Lcom/appfeel/cordova/admob/AdMobAds;

    move-result-object v1

    iget-object v1, v1, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    return-void
.end method
