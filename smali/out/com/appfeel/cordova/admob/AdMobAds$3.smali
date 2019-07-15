.class Lcom/appfeel/cordova/admob/AdMobAds$3;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$delayCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;Lorg/apache/cordova/CallbackContext;)V
    .registers 3
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 575
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 576
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 577
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_20

    .line 578
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 580
    :cond_20
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 581
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$402(Lcom/appfeel/cordova/admob/AdMobAds;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;

    .line 583
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_2f
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1, v3}, Lcom/appfeel/cordova/admob/AdMobAds;->access$302(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    .line 584
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v1, v3}, Lcom/appfeel/cordova/admob/AdMobAds;->access$002(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    .line 585
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$3;->val$delayCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 586
    return-void
.end method
