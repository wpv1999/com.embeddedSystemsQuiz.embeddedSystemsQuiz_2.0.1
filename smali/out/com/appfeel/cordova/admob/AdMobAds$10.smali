.class Lcom/appfeel/cordova/admob/AdMobAds$10;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->tryBackfill(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$_iid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-object p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->val$_iid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1900(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 790
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->val$_iid:Ljava/lang/String;

    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$2000(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1300(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    .line 794
    :goto_15
    return-void

    .line 792
    :cond_16
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->val$_iid:Ljava/lang/String;

    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds$10;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1200(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1300(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    goto :goto_15
.end method
